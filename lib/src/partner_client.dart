import 'dart:convert';

import 'package:bs58/bs58.dart';
import 'package:cryptography/cryptography.dart' hide Hash, PublicKey, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart';
import 'package:kyc_client_dart/src/common.dart';
import 'package:kyc_client_dart/src/models/user_profile.dart' as profile;
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

export 'models/order_id.dart';
export 'models/validation_result.dart';

class KycPartnerClient {
  KycPartnerClient({
    required this.authKeyPair,
    this.baseUrl = defaultKycBaseUrl,
  });

  final SimpleKeyPair authKeyPair;
  final String? baseUrl;

  late String _authPublicKey;

  late String _token;
  late KycServiceClient _kycClient;

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
    _kycClient = KycServiceClient(dio, baseUrl: baseUrl);
  }

  Future<V1GetInfoResponse> getUserInfo(String userPK) async =>
      _kycClient.kycServiceGetInfo(
        body: V1GetInfoRequest(publicKey: userPK),
      );

  Future<String> getUserSecretKey(String userPK) async {
    final info = await _kycClient.kycServiceGetInfo(
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

  Future<profile.UserProfile> getUserData({
    required String userPK,
    required String secretKey,
  }) async {
    final response = await _kycClient.kycServiceGetUserData(
      body: V1GetUserDataRequest(userPublicKey: userPK),
    );

    final validationMap = <String, ValidationResult>{};
    final custom = <String, dynamic>{};

    // Process validation data
    for (final encryptedData in response.validationData) {
      final decryptedData = verifyAndDecrypt(
        signedEncryptedData: encryptedData.encryptedData,
        secretKey: secretKey,
        userPK: encryptedData.validatorPublicKey,
      );
      final wrappedData = WrappedValidation.fromBuffer(decryptedData);

      final result = switch (wrappedData.whichData()) {
        WrappedValidation_Data.hash => HashValidationResult(
            dataId: encryptedData.dataId,
            value: wrappedData.hash,
          ),
        WrappedValidation_Data.custom => CustomValidationResult(
            type: wrappedData.custom.type,
            value: utf8.decode(wrappedData.custom.data),
          ),
        WrappedValidation_Data.notSet => null,
      };

      if (result != null) {
        if (result is HashValidationResult) {
          validationMap[result.dataId] = result;
        } else if (result is CustomValidationResult) {
          custom[result.type] = result.value;
        }
      }
    }

    final email = <profile.Email>[];
    final phone = <profile.Phone>[];
    final name = <profile.Name>[];
    final birthDate = <profile.BirthDate>[];
    final document = <profile.Document>[];
    final bankInfo = <profile.BankInfo>[];
    final selfie = <profile.Selfie>[];

    // Process user data
    for (final encryptedData in response.userData) {
      final decryptedData = verifyAndDecrypt(
        signedEncryptedData: encryptedData.encryptedData,
        secretKey: secretKey,
        userPK: userPK,
      );
      final wrappedData = WrappedData.fromBuffer(decryptedData);

      final dataId = encryptedData.id;
      final verificationData = validationMap[dataId] as HashValidationResult?;

      bool verified = false;
      if (verificationData != null) {
        final item = wrappedData.email; //TODO what data to match

        final hash = generateHash(item);
        verified = hash == verificationData.value;
      }

      switch (wrappedData.whichData()) {
        case WrappedData_Data.email:
          email.add(
            profile.Email(
              value: wrappedData.email,
              dataId: dataId,
              verified: verified,
            ),
          );
        case WrappedData_Data.name:
          name.add(
            profile.Name(
              firstName: wrappedData.name.firstName,
              lastName: wrappedData.name.lastName,
              dataId: dataId,
              verified: verified,
            ),
          );
        case WrappedData_Data.birthDate:
          birthDate.add(
            profile.BirthDate(
              value: wrappedData.birthDate.toDateTime(),
              dataId: dataId,
              verified: verified,
            ),
          );
        case WrappedData_Data.phone:
          phone.add(
            profile.Phone(
              value: wrappedData.phone,
              dataId: dataId,
              verified: verified,
            ),
          );
        case WrappedData_Data.document:
          document.add(
            profile.Document(
              type: wrappedData.document.type.toString(), //TODO
              number: wrappedData.document.number,
              dataId: dataId,
              verified: verified,
            ),
          );
        case WrappedData_Data.bankInfo:
          bankInfo.add(
            profile.BankInfo(
              bankName: wrappedData.bankInfo.bankName,
              accountNumber: wrappedData.bankInfo.accountNumber,
              bankCode: wrappedData.bankInfo.bankCode,
              dataId: dataId,
              verified: verified,
            ),
          );
        case WrappedData_Data.selfieImage:
          selfie.add(
            profile.Selfie(
              value: wrappedData.selfieImage,
              dataId: dataId,
              verified: verified,
            ),
          );
        case WrappedData_Data.notSet:
          break;
      }
    }

    return profile.UserProfile(
      email: email,
      phone: phone,
      name: name,
      birthDate: birthDate,
      document: document,
      bankInfo: bankInfo,
      selfie: selfie,
      custom: custom,
    );
  }

  Future<void> setValidationResult({
    required ValidationResult value,
    required String userPK,
    required String secretKey,
  }) async {
    final wrappedData = switch (value) {
      HashValidationResult() =>
        WrappedValidation(hash: generateHash(value.value)),
      CustomValidationResult() => WrappedValidation(
          custom: CustomValidation(
            type: value.type,
            data: Uint8List.fromList(utf8.encode(value.value)),
          ),
        ),
    }
        .writeToBuffer();

    final encryptedData = encryptAndSign(
      data: wrappedData,
      secretBox: SecretBox(Uint8List.fromList(base58.decode(secretKey))),
      signingKey: _signingKey,
    );

    await _kycClient.kycServiceSetValidationData(
      body: V1SetValidationDataRequest(
        encryptedData: base64Encode(encryptedData),
        userPublicKey: userPK,
        dataId: value.dataId,
        id: '',
      ),
    );
  }

  Future<V1GetOrderResponse> getOrder({
    required OrderId orderId,
  }) async =>
      _kycClient.kycServiceGetOrder(
        body: V1GetOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
        ),
      );

  Future<V1GetPartnerOrdersResponse> getPartnerOrders() async =>
      _kycClient.kycServiceGetPartnerOrders();

  Future<void> acceptOnRampOrder({
    required OrderId orderId,
    required String bankName,
    required String bankAccount,
  }) async =>
      _kycClient.kycServiceAcceptOrder(
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
      _kycClient.kycServiceAcceptOrder(
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
      _kycClient.kycServiceCompleteOrder(
        body: V1CompleteOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          transactionId: transactionId,
        ),
      );

  Future<void> completeOffRampOrder({
    required OrderId orderId,
  }) async =>
      _kycClient.kycServiceCompleteOrder(
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
      _kycClient.kycServiceFailOrder(
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
      _kycClient.kycServiceRejectOrder(
        body: V1RejectOrderRequest(orderId: orderId, reason: reason),
      );
}
