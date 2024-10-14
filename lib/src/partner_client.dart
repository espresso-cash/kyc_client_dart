import 'dart:convert';
import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';

import 'package:cryptography/cryptography.dart' hide Hash, PublicKey, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart';
import 'package:pinenacl/digests.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

export 'models/order_id.dart';
export 'models/validation_result.dart';

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

  Future<UserData> getData({
    required String userPK,
    required String secretKey,
  }) async {
    final response = await _apiClient.kycServiceGetUserData(
      body: V1GetUserDataRequest(userPublicKey: userPK),
    );

    UserData userData = const UserData();

    for (final encryptedData in response.userData) {
      final decryptedData = _verifyAndDecrypt(
        signedEncryptedData: encryptedData.encryptedData,
        secretKey: secretKey,
      );
      final wrappedData = WrappedData.fromBuffer(decryptedData);

      userData = userData.copyWith(
        email: wrappedData.hasEmail() ? wrappedData.email : userData.email,
        firstName: wrappedData.hasName()
            ? wrappedData.name.firstName
            : userData.firstName,
        lastName: wrappedData.hasName()
            ? wrappedData.name.lastName
            : userData.lastName,
        dob: wrappedData.hasBirthDate()
            ? wrappedData.birthDate.toDateTime()
            : userData.dob,
        phone: wrappedData.hasPhone() ? wrappedData.phone : userData.phone,
        idNumber: wrappedData.hasDocument()
            ? wrappedData.document.number
            : userData.idNumber,
        idType: wrappedData.hasDocument()
            ? mapDocumentTypeToIdType(wrappedData.document.type)
            : userData.idType,
        bankAccountNumber: wrappedData.hasBankInfo()
            ? wrappedData.bankInfo.accountNumber
            : userData.bankAccountNumber,
        bankCode: wrappedData.hasBankInfo()
            ? wrappedData.bankInfo.bankCode
            : userData.bankCode,
        bankName: wrappedData.hasBankInfo()
            ? wrappedData.bankInfo.bankName
            : userData.bankName,
        selfie: wrappedData.hasSelfieImage()
            ? Uint8List.fromList(wrappedData.selfieImage)
            : userData.selfie,
      );
    }

    return userData;
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
    final response = await _apiClient.kycServiceGetUserData(
      body: V1GetUserDataRequest(userPublicKey: userPK),
    );

    for (final encryptedData in response.validationData) {
      final decryptedData = _verifyAndDecrypt(
        signedEncryptedData: encryptedData.encryptedData,
        secretKey: secretKey,
      );

      final wrappedData = WrappedValidation.fromBuffer(decryptedData);

      print(encryptedData.dataId);
      print(wrappedData);

      // print(wrappedData.hash);
      // print(wrappedData.custom.type);
      // print(utf8.decode(wrappedData.custom.data));
    }

    // final data = response[key] as String?;

    // if (data == null || data.isEmpty) return null;

    // final box = SecretBox(Uint8List.fromList(base58.decode(secretKey)));

    // final signedMessage = SignedMessage.fromList(
    //   signedMessage: base64Decode(data),
    // );

    // final encryptedData = base64Encode(signedMessage.message);
    // final decrypted =
    //     box.decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));

    // return hex.encode(decrypted);
    return '123'; //TODO
  }

  Future<void> setValidationResult({
    required ValidationResult value,
    required String userPK,
    required String secretKey,
  }) async {
    SignedMessage encryptAndSign(Uint8List data) {
      final box = SecretBox(Uint8List.fromList(base58.decode(secretKey)));
      final encrypted = box.encrypt(data);
      return _signingKey.sign(Uint8List.fromList(encrypted));
    }

    final wrappedData = switch (value.type) {
      ValidationType.email || ValidationType.phone => WrappedValidation(
          hash: _hash(value.value),
        ),
      ValidationType.custom => WrappedValidation(
          custom: CustomValidation(
            type: 'kycSmileId',
            data: Uint8List.fromList(utf8.encode(value.value)),
          ),
        ),
    }
        .writeToBuffer();

    await _apiClient.kycServiceSetValidationData(
      body: V1SetValidationDataRequest(
        encryptedData: base64Encode(encryptAndSign(wrappedData)),
        userPublicKey: userPK,
        dataId: value.dataId,
        id: '',
      ),
    );
  }

  Future<V1GetOrderResponse> getOrder({
    required OrderId orderId,
  }) async =>
      _apiClient.kycServiceGetOrder(
        body: V1GetOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
        ),
      );

  Future<V1GetPartnerOrdersResponse> getPartnerOrders() async =>
      _apiClient.kycServiceGetPartnerOrders();

  Future<void> acceptOnRampOrder({
    required OrderId orderId,
    required String bankName,
    required String bankAccount,
  }) async =>
      _apiClient.kycServiceAcceptOrder(
        body: V1AcceptOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          bankName: bankName,
          bankAccount: bankAccount,
          cryptoWalletAddress: '',
        ),
      );

  Future<void> acceptOffRampOrder({
    required OrderId orderId,
    required String cryptoWalletAddress,
  }) async =>
      _apiClient.kycServiceAcceptOrder(
        body: V1AcceptOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          cryptoWalletAddress: cryptoWalletAddress,
          bankName: '',
          bankAccount: '',
        ),
      );

  Future<void> completeOnRampOrder({
    required OrderId orderId,
    required String transactionId,
  }) async =>
      _apiClient.kycServiceCompleteOrder(
        body: V1CompleteOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          transactionId: transactionId,
        ),
      );

  Future<void> completeOffRampOrder({
    required OrderId orderId,
  }) async =>
      _apiClient.kycServiceCompleteOrder(
        body: V1CompleteOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          transactionId: '',
        ),
      );

  Future<void> failOrder({
    required OrderId orderId,
    required String reason,
  }) async =>
      _apiClient.kycServiceFailOrder(
        body: V1FailOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          reason: reason,
        ),
      );

  Future<void> rejectOrder({
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

Uint8List _verifyAndDecrypt({
  required String signedEncryptedData,
  required String secretKey,
}) {
  final box = SecretBox(Uint8List.fromList(base58.decode(secretKey)));

  final signedMessage = SignedMessage.fromList(
    signedMessage: base64Decode(signedEncryptedData),
  );

  final encryptedData = Uint8List.fromList(signedMessage.message);
  final decrypted = box.decrypt(
    EncryptedMessage(
      nonce: encryptedData.sublist(0, TweetNaCl.nonceLength),
      cipherText: encryptedData.sublist(TweetNaCl.nonceLength),
    ),
  );

  return decrypted;
}
