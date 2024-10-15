import 'dart:convert';

import 'package:bs58/bs58.dart';
import 'package:cryptography/cryptography.dart' hide PublicKey, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/src/api/export.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart';
import 'package:kyc_client_dart/src/api/protos/google/protobuf/timestamp.pb.dart';
import 'package:kyc_client_dart/src/common.dart';
import 'package:kyc_client_dart/src/models/id_type.dart';
import 'package:kyc_client_dart/src/models/partner.dart';
import 'package:kyc_client_dart/src/models/user_data.dart';
import 'package:kyc_client_dart/src/models/user_profile.dart' as profile;
import 'package:pinenacl/ed25519.dart' hide Signature;
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

export 'models/partner.dart';
export 'models/user_data.dart';

typedef SignRequest = Future<Signature> Function(Iterable<int> data);

class KycUserClient {
  KycUserClient({
    required this.sign,
    this.kycBaseUrl = defaultKycBaseUrl,
    this.validatorBaseUrl = defaultValidatorBaseUrl,
  });

  final String? kycBaseUrl;
  final String? validatorBaseUrl;
  final SignRequest sign;

  static const _seedMessage = 'hello';
  static const _proofMessage = 'walletProofMessage';

  late final SimpleKeyPair _authKeyPair;
  late final String _authPublicKey;
  late final PrivateKey _encryptionSecretKey;
  late final SecretKey _secretKey;
  late final String _encryptedSecretKey;
  late final String _rawSecretKey;
  late final SecretBox _secretBox;
  late final SigningKey _signingKey;

  late final KycServiceClient _kycClient;
  late final ValidatorServiceClient _validatorClient;

  String get authPublicKey => _authPublicKey;

  String get rawSecretKey => _rawSecretKey;

  Future<void> init({required String walletAddress}) async {
    final seed = await _generateSeed();
    await _initializeKeys(seed);
    await _initializeKycClient();
    await _initializeValidatorClient();

    try {
      final getInfo = await _kycClient.kycServiceGetInfo(
        body: V1GetInfoRequest(publicKey: _authPublicKey),
      );
      await _initializeEncryption(
        encryptedSecretKey: getInfo.encryptedSecretKey,
      );
    } on DioException catch (e) {
      if (e.response?.data is! Map<String, dynamic> ||
          (e.response?.data as Map<String, dynamic>)['message'] !=
              'user not initialized') {
        rethrow;
      }
      await _initializeEncryption();
      await _initStorage(walletAddress: walletAddress);
    }
  }

  Future<Uint8List> _generateSeed() async {
    final signature = await sign(utf8.encode(_seedMessage));
    return Uint8List.fromList(signature.bytes.sublist(0, 32));
  }

  Future<void> _initializeKeys(Uint8List seed) async {
    _authKeyPair = await Ed25519().newKeyPairFromSeed(seed);
    _authPublicKey = base58.encode(
      Uint8List.fromList(
        await _authKeyPair.extractPublicKey().then((value) => value.bytes),
      ),
    );
  }

  Future<void> _initializeKycClient() async {
    final dio = await _createAuthenticatedClient('kyc.espressocash.com');
    _kycClient = KycServiceClient(dio, baseUrl: kycBaseUrl);
  }

  Future<void> _initializeValidatorClient() async {
    final dio = await _createAuthenticatedClient('validator.espressocash.com');
    _validatorClient = ValidatorServiceClient(dio, baseUrl: validatorBaseUrl);
  }

  Future<Dio> _createAuthenticatedClient(String audience) async {
    final payload = jwt.JWT(
      <String, dynamic>{
        'iss': _authPublicKey,
        'aud': audience,
      },
    );

    final publicKey = await _authKeyPair.extractPublicKey();
    final token = payload.sign(
      jwt.EdDSAPrivateKey(
        await _authKeyPair.extractPrivateKeyBytes() + publicKey.bytes,
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
    );

    return Dio()..interceptors.add(AuthInterceptor(token));
  }

  Future<void> _initializeEncryption({String? encryptedSecretKey}) async {
    final edSK =
        Uint8List.fromList(await _authKeyPair.extractPrivateKeyBytes());
    final xSK = Uint8List(32);
    TweetNaClExt.crypto_sign_ed25519_sk_to_x25519_sk(xSK, edSK);
    _encryptionSecretKey = PrivateKey(xSK);

    final sealedBox = SealedBox(_encryptionSecretKey);

    _secretKey = encryptedSecretKey == null
        ? await Chacha20.poly1305Aead().newSecretKey()
        : SecretKey(sealedBox.decrypt(base64Decode(encryptedSecretKey)));

    _rawSecretKey =
        base58.encode(Uint8List.fromList(await _secretKey.extractBytes()));
    _encryptedSecretKey = base64Encode(
      sealedBox.encrypt(Uint8List.fromList(await _secretKey.extractBytes())),
    );
    _secretBox = SecretBox(Uint8List.fromList(await _secretKey.extractBytes()));
    _signingKey = SigningKey.fromValidBytes(
      Uint8List.fromList(
        await _authKeyPair.extractPrivateKeyBytes() +
            (await _authKeyPair.extractPublicKey()).bytes,
      ),
    );
  }

  Future<void> _initStorage({required String walletAddress}) async {
    final proofSignature = await sign(utf8.encode(_proofMessage));
    await _kycClient.kycServiceInitStorage(
      body: V1InitStorageRequest(
        walletAddress: walletAddress,
        message: _seedMessage,
        encryptedSecretKey: _encryptedSecretKey,
        walletProofMessage: _proofMessage,
        walletProofSignature:
            base58.encode(Uint8List.fromList(proofSignature.bytes)),
      ),
    );
  }

  Future<PartnerModel> getPartnerInfo({required String partnerPK}) => _kycClient
      .kycServiceGetPartnerInfo(body: V1GetPartnerInfoRequest(id: partnerPK))
      .then((e) => PartnerModel.fromJson(e.toJson()));

  Future<void> grantPartnerAccess(String partnerPK) async {
    final partnerEdPK = Uint8List.fromList(base58.decode(partnerPK));
    final partnerXPK = Uint8List(32);

    TweetNaClExt.crypto_sign_ed25519_pk_to_x25519_pk(partnerXPK, partnerEdPK);

    final partnerPublicKey = PublicKey(partnerXPK);
    final sealedBox = Box(
      theirPublicKey: partnerPublicKey,
      myPrivateKey: _encryptionSecretKey,
    );

    final encodedSecretKey = base64Encode(
      sealedBox.encrypt(Uint8List.fromList(base58.decode(_rawSecretKey))),
    );

    await _kycClient.kycServiceGrantAccess(
      body: V1GrantAccessRequest(
        validatorPublicKey: partnerPK,
        encryptedSecretKey: encodedSecretKey,
      ),
    );
  }

  Future<void> setData({
    required UserData data,
  }) async {
    final wrappedDataList = [
      if (data.phone != null) WrappedData(phone: data.phone),
      if (data.email != null) WrappedData(email: data.email),
      if (data.firstName != null && data.lastName != null)
        WrappedData(
          name: Name(
            firstName: data.firstName,
            lastName: data.lastName,
          ),
        ),
      if (data.idNumber != null && data.idType != null)
        WrappedData(
          document: Document(
            number: data.idNumber,
            type: data.idType!.toDocumentType(), // TODOrefactor null !
          ),
        ),
      if (data.bankName != null &&
          data.bankAccountNumber != null &&
          data.bankCode != null)
        WrappedData(
          bankInfo: BankInfo(
            bankName: data.bankName,
            accountNumber: data.bankAccountNumber,
            bankCode: data.bankCode,
          ),
        ),
      if (data.dob case final dob?)
        WrappedData(birthDate: Timestamp.fromDateTime(dob)),
      if (data.selfie != null) WrappedData(selfieImage: data.selfie),
    ];

    for (final wrappedData in wrappedDataList) {
      final protoData = wrappedData.writeToBuffer();
      final encryptedData = encryptAndSign(
        data: protoData,
        secretBox: _secretBox,
        signingKey: _signingKey,
      );

      await _kycClient.kycServiceSetUserData(
        body: V1SetUserDataRequest(
          id: '',
          encryptedData: base64Encode(encryptedData),
        ),
      );
    }
  }

  //TODO create separate update data

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
        final hash = generateHash(base64Encode(wrappedData.writeToBuffer()));
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
              type: wrappedData.document.type.toIdType(),
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

  Future<void> initDocumentValidation() async {
    await _validatorClient.validatorServiceInitDocumentValidation();
  }

  Future<void> initEmailValidation() async {
    await _validatorClient.validatorServiceInitEmailValidation();
  }

  Future<void> validateEmail({required String code}) async {
    await _validatorClient.validatorServiceValidateEmail(
      body: V1ValidateEmailRequest(code: code),
    );
  }

  Future<void> initPhoneValidation() async {
    await _validatorClient.validatorServiceInitPhoneValidation();
  }

  Future<void> validatePhone({required String code}) async {
    await _validatorClient.validatorServiceValidatePhone(
      body: V1ValidatePhoneRequest(code: code),
    );
  }

  Future<String> createOnRampOrder({
    required String partnerPK,
    required String cryptoAmount,
    required String cryptoCurrency,
    required String fiatAmount,
    required String fiatCurrency,
  }) async {
    final response = await _kycClient.kycServiceCreateOnRampOrder(
      body: V1CreateOnRampOrderRequest(
        partnerPublicKey: partnerPK,
        cryptoAmount: cryptoAmount,
        cryptoCurrency: cryptoCurrency,
        fiatAmount: fiatAmount,
        fiatCurrency: fiatCurrency,
      ),
    );

    return response.orderId;
  }

  Future<String> createOffRampOrder({
    required String partnerPK,
    required String cryptoAmount,
    required String cryptoCurrency,
    required String fiatAmount,
    required String fiatCurrency,
    required String bankName,
    required String bankAccount,
  }) async {
    final response = await _kycClient.kycServiceCreateOffRampOrder(
      body: V1CreateOffRampOrderRequest(
        partnerPublicKey: partnerPK,
        cryptoAmount: cryptoAmount,
        cryptoCurrency: cryptoCurrency,
        fiatAmount: fiatAmount,
        fiatCurrency: fiatCurrency,
        bankName: bankName,
        bankAccount: bankAccount,
      ),
    );

    return response.orderId;
  }

  // TODO: update return Order object
  Future<V1GetOrderResponse> getOrder({
    required OrderId orderId,
  }) async =>
      _kycClient.kycServiceGetOrder(
        body: V1GetOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
        ),
      );

  // TODO: update return Order object
  Future<V1GetOrdersResponse> getOrders() async =>
      _kycClient.kycServiceGetOrders();
}
