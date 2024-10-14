import 'dart:convert';
import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';

import 'package:cryptography/cryptography.dart' hide Hash, PublicKey, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/src/api/export.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:pinenacl/digests.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

const _defaultKycBaseUrl =
    'https://kyc-backend-beta-402681483920.europe-west1.run.app/';

class KycPartnerClient {
  KycPartnerClient({
    required this.authKeyPair,
    this.baseUrl = _defaultKycBaseUrl,
  });

  final SimpleKeyPair authKeyPair;
  final String? baseUrl;

  late String _authPublicKey;

  late String _token;
  late KycServiceClient _apiClient;

  late SigningKey _signingKey;

  Future<void> init() async {
    await _generateAuthToken();
    await _initializeEncryption();
  }

  Future<void> _initializeEncryption() async {
    _signingKey = SigningKey.fromValidBytes(
      Uint8List.fromList(
        await authKeyPair.extractPrivateKeyBytes() +
            base58.decode(_authPublicKey),
      ),
    );
  }

  Future<void> _generateAuthToken() async {
    _authPublicKey = await authKeyPair
        .extractPublicKey()
        .then((value) => Uint8List.fromList(value.bytes))
        .then(base58.encode);

    final partnerTokenData = jwt.JWT(
      <String, dynamic>{'iss': _authPublicKey, 'aud': 'kyc.espressocash.com'},
    );

    _token = partnerTokenData.sign(
      jwt.EdDSAPrivateKey(
        await authKeyPair.extractPrivateKeyBytes() +
            base58.decode(_authPublicKey),
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
    );

    final dio = Dio()..interceptors.add(AuthInterceptor(_token));
    _apiClient = KycServiceClient(dio, baseUrl: baseUrl);
  }

  Future<V1GetInfoResponse> getUserInfo(String userPK) async =>
      _apiClient.kycServiceGetInfo(
        body: V1GetInfoRequest(publicKey: userPK),
      );

  Future<String> getUserSecretKey(String userPK) async {
    final info = await _apiClient.kycServiceGetInfo(
      body: V1GetInfoRequest(publicKey: userPK),
    );

    final edSK = await authKeyPair.extractPrivateKeyBytes();
    final xSK = Uint8List(32);

    TweetNaClExt.crypto_sign_ed25519_sk_to_x25519_sk(
      xSK,
      Uint8List.fromList(edSK),
    );

    final userEdPK = Uint8List.fromList(base58.decode(userPK));
    final userXPK = Uint8List(32);

    TweetNaClExt.crypto_sign_ed25519_pk_to_x25519_pk(
      userXPK,
      userEdPK,
    );

    final userPublicKey = PublicKey(userXPK);
    final privateKey = PrivateKey(xSK);

    final sealedBox = Box(
      theirPublicKey: userPublicKey,
      myPrivateKey: privateKey,
    );

    final encodedSecretKey = base64Decode(info.encryptedSecretKey);
    final encryptedMessage = EncryptedMessage.fromList(encodedSecretKey);
    final decryptedSecretKey = sealedBox.decrypt(encryptedMessage);

    return base58.encode(decryptedSecretKey);
  }

  Future<Map<String, dynamic>> getData({
    required String userPK,
    required String secretKey,
  }) async {
    final response = await _apiClient
        .kycServiceGetData(body: V1GetDataRequest(publicKey: userPK))
        .then((e) => e.data.toJson());

    final verifyKey = VerifyKey(Uint8List.fromList(base58.decode(userPK)));
    final box = SecretBox(Uint8List.fromList(base58.decode(secretKey)));

    return Map.fromEntries(
      await Future.wait(
        response.entries.map((entry) async {
          final signedDataRaw = entry.value as String;

          final signedMessage = SignedMessage.fromList(
            signedMessage: base64Decode(signedDataRaw),
          );

          if (signedDataRaw.isEmpty) return MapEntry(entry.key, '');

          if (!verifyKey.verifySignedMessage(signedMessage: signedMessage)) {
            throw Exception('Invalid signature for key: $entry');
          }

          final encryptedData = Uint8List.fromList(signedMessage.message);
          final decrypted = box.decrypt(
            EncryptedMessage(
              nonce: encryptedData.sublist(0, TweetNaCl.nonceLength),
              cipherText: encryptedData.sublist(TweetNaCl.nonceLength),
            ),
          );

          if (entry.key == 'photoSelfie' || entry.key == 'photoIdCard') {
            return MapEntry(entry.key, decrypted);
          }

          return MapEntry(entry.key, utf8.decode(decrypted));
        }),
      ),
    );
  }

  Future<Map<String, dynamic>> getEmail({
    required String userPK,
    required String secretKey,
  }) async {
    final results = await Future.wait([
      getData(userPK: userPK, secretKey: secretKey),
      getValidationResult(key: 'email', secretKey: secretKey, userPK: userPK),
    ]);

    final userData = results[0] as Map<String, dynamic>?;
    final validationResult = results[1] as String?;

    final email = userData?['email'] as String;
    final emailHash = _hash(email);
    final verified = emailHash == validationResult;

    return {
      'value': email,
      'verified': verified,
    };
  }

  Future<Map<String, dynamic>> getPhone({
    required String userPK,
    required String secretKey,
  }) async {
    final results = await Future.wait([
      getData(userPK: userPK, secretKey: secretKey),
      getValidationResult(key: 'phone', secretKey: secretKey, userPK: userPK),
    ]);

    final userData = results[0] as Map<String, dynamic>?;
    final validationResult = results[1] as String?;

    final phone = userData?['phone'] as String;
    final phoneHash = _hash(phone);
    final verified = phoneHash == validationResult;

    return {
      'value': phone,
      'verified': verified,
    };
  }

  Future<String?> getValidationResult({
    required String key,
    required String secretKey,
    required String userPK,
  }) async {
    final response = await _apiClient
        .kycServiceGetValidationResult(
          body: V1GetValidationResultRequest(
            userPublicKey: userPK,
            validatorPublicKey: _authPublicKey,
          ),
        )
        .then((e) => e.data.toJson());

    final data = response[key] as String?;

    if (data == null || data.isEmpty) return null;

    final box = SecretBox(Uint8List.fromList(base58.decode(secretKey)));

    final signedMessage = SignedMessage.fromList(
      signedMessage: base64Decode(data),
    );

    final encryptedData = base64Encode(signedMessage.message);
    final decrypted =
        box.decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));

    return hex.encode(decrypted);
  }

  Future<void> setValidationResult({
    required V1ValidationData value,
    required String userPK,
    required String secretKey,
  }) async {
    SignedMessage encryptAndSign(Uint8List data) {
      final box = SecretBox(Uint8List.fromList(base58.decode(secretKey)));
      final encrypted = box.encrypt(data);
      return _signingKey.sign(Uint8List.fromList(encrypted));
    }

    final encryptedValue = value.encryptAndSign(encryptAndSign);

    await _apiClient.kycServiceSetValidationResult(
      body: V1SetValidationResultRequest(
        data: encryptedValue,
        userPublicKey: userPK,
      ),
    );
  }

  Future<V1GetOrderResponse> getOrder({
    String? orderId,
    String? externalId,
  }) async {
    assert(
      orderId != null || externalId != null,
      'Either orderId or externalId must be provided',
    );
    return _apiClient.kycServiceGetOrder(
      body: V1GetOrderRequest(orderId: orderId, externalId: externalId),
    );
  }

  Future<V1GetPartnerOrdersResponse> getPartnerOrders() async =>
      _apiClient.kycServiceGetPartnerOrders();

  Future<V1AcceptOrderResponse> acceptOnRampOrder({
    required String orderId,
    required String bankName,
    required String bankAccount,
    String? externalId,
  }) async {
    final response = _apiClient.kycServiceAcceptOrder(
      body: V1AcceptOrderRequest(
        orderId: orderId,
        bankName: bankName,
        bankAccount: bankAccount,
        externalId: externalId,
      ),
    );

    return response;
  }

  Future<V1AcceptOrderResponse> acceptOffRampOrder({
    required String orderId,
    required String cryptoWalletAddress,
    String? externalId,
  }) async {
    final response = _apiClient.kycServiceAcceptOrder(
      body: V1AcceptOrderRequest(
        orderId: orderId,
        cryptoWalletAddress: cryptoWalletAddress,
        externalId: externalId,
      ),
    );

    return response;
  }

  Future<V1CompleteOrderResponse> completeOnRampOrder({
    String? orderId,
    String? externalId,
    required String transactionId,
  }) async {
    assert(
      orderId != null || externalId != null,
      'Either orderId or externalId must be provided',
    );
    final response = _apiClient.kycServiceCompleteOrder(
      body: V1CompleteOrderRequest(
        orderId: orderId,
        externalId: externalId,
        transactionId: transactionId,
      ),
    );

    return response;
  }

  Future<V1CompleteOrderResponse> completeOffRampOrder({
    String? orderId,
    String? externalId,
  }) async {
    assert(
      orderId != null || externalId != null,
      'Either orderId or externalId must be provided',
    );
    final response = _apiClient.kycServiceCompleteOrder(
      body: V1CompleteOrderRequest(
        orderId: orderId,
        externalId: externalId,
      ),
    );

    return response;
  }

  Future<V1FailOrderResponse> failOrder({
    String? orderId,
    String? externalId,
    required String reason,
  }) async {
    assert(
      orderId != null || externalId != null,
      'Either orderId or externalId must be provided',
    );
    return _apiClient.kycServiceFailOrder(
      body: V1FailOrderRequest(
        orderId: orderId,
        externalId: externalId,
        reason: reason,
      ),
    );
  }

  Future<V1RejectOrderResponse> rejectOrder({
    required String orderId,
    required String reason,
  }) async =>
      _apiClient.kycServiceRejectOrder(
        body: V1RejectOrderRequest(orderId: orderId, reason: reason),
      );
}

String _hash(String value) {
  final bytes = utf8.encode(value);
  final digest = Hash.sha256(bytes);
  return hex.encode(digest);
}

extension V1ValidationDataExtensions on V1ValidationData {
  V1ValidationData encryptAndSign(
    SignedMessage Function(Uint8List) encryptAndSign,
  ) =>
      V1ValidationData(
        email: _encryptAndEncode(email, encryptAndSign),
        phone: _encryptAndEncode(phone, encryptAndSign),
        kycSmileId: _encryptAndEncode(kycSmileId, encryptAndSign),
      );

  String? _encryptAndEncode(
    String? value,
    SignedMessage Function(Uint8List) encryptAndSign,
  ) {
    if (value == null) return null;
    final encryptedData =
        encryptAndSign(Uint8List.fromList(utf8.encode(value)));
    return base64Encode(encryptedData);
  }
}
