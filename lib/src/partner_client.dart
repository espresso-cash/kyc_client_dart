import 'dart:convert';

import 'package:cryptography/cryptography.dart' hide Hash, PublicKey, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/src/api/export.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:pinenacl/digests.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';
import 'package:solana/base58.dart';

class KycPartnerClient {
  KycPartnerClient({
    required this.authKeyPair,
    this.baseUrl,
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
            base58decode(_authPublicKey),
      ),
    );
  }

  Future<void> _generateAuthToken() async {
    _authPublicKey = await authKeyPair
        .extractPublicKey()
        .then((value) => value.bytes)
        .then(base58encode);

    final partnerTokenData = jwt.JWT(
      <String, String>{},
      issuer: _authPublicKey,
    );

    _token = partnerTokenData.sign(
      jwt.EdDSAPrivateKey(
        await authKeyPair.extractPrivateKeyBytes() +
            base58decode(_authPublicKey),
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
    );

    final dio = Dio()..interceptors.add(AuthInterceptor(_token));
    _apiClient = KycServiceClient(dio, baseUrl: baseUrl);
  }

  Future<Map<String, dynamic>> getData({
    required String userPK,
    required String secretKey,
  }) async {
    final response = await _apiClient
        .kycServiceGetData(body: V1GetDataRequest(publicKey: userPK))
        .then((e) => e.data.toJson());

    final verifyKey = VerifyKey(Uint8List.fromList(base58decode(userPK)));
    final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

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

  Future<void> setValidationResult({
    required V1ValidationData value,
    required String userPK,
    required String secretKey,
  }) async {
    SignedMessage encryptAndSign(Uint8List data) {
      final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));
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

  Future<String?> getValidationResult({
    required String key,
    required String validatorPK,
    required String secretKey,
    required String userPK,
  }) async {
    final response = await _apiClient
        .kycServiceGetValidationResult(
          body: V1GetValidationResultRequest(
            userPublicKey: userPK,
            validatorPublicKey: validatorPK,
          ),
        )
        .then((e) => e.data.toJson());

    final data = response[key] as String?;

    if (data == null) return null;

    final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

    final signedMessage = SignedMessage.fromList(
      signedMessage: base64Decode(data),
    );

    final encryptedData = base64Encode(signedMessage.message);
    final decrypted =
        box.decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));

    return utf8.decode(decrypted);
  }

  Future<void> validateField({
    required V1ValidationData value,
    required String userPK,
    required String secretKey,
  }) async {
    final updatedEmail = value.email != null ? await _hash(value.email!) : null;
    final updatedPhone = value.phone != null ? await _hash(value.phone!) : null;

    final updatedValue = value.copyWith(
      email: updatedEmail,
      phone: updatedPhone,
    );

    await setValidationResult(
      value: updatedValue,
      userPK: userPK,
      secretKey: secretKey,
    );
  }

  Future<V1GetOrderResponse> getOrder(String orderId) async =>
      _apiClient.kycServiceGetOrder(body: V1GetOrderRequest(orderId: orderId));

  Future<V1GetPartnerOrdersResponse> getPartnerOrders() async =>
      _apiClient.kycServiceGetPartnerOrders();

  Future<V1AcceptOrderResponse> acceptOrder(String orderId) async => _apiClient
      .kycServiceAcceptOrder(body: V1AcceptOrderRequest(orderId: orderId));

  Future<V1CompleteOrderResponse> completeOrder(String orderId) async =>
      _apiClient.kycServiceCompleteOrder(
        body: V1CompleteOrderRequest(orderId: orderId),
      );

  Future<V1FailOrderResponse> failOrder({
    required String orderId,
    required String reason,
  }) async =>
      _apiClient.kycServiceFailOrder(
        body: V1FailOrderRequest(orderId: orderId, reason: reason),
      );

  Future<V1RejectOrderResponse> rejectOrder({
    required String orderId,
    required String reason,
  }) async =>
      _apiClient.kycServiceRejectOrder(
        body: V1RejectOrderRequest(orderId: orderId, reason: reason),
      );

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

    final userEdPK = Uint8List.fromList(base58decode(userPK));
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

    return base58encode(decryptedSecretKey);
  }
}

Future<String> _hash(String value) async {
  const hex = Base16Encoder.instance;

  const hasher = Hash.blake2b;
  final hash = hex.encode(hasher(value));

  return hash;
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
