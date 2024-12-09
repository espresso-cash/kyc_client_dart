import 'dart:convert';

import 'package:bs58/bs58.dart';
import 'package:cryptography/cryptography.dart' hide PublicKey, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/src/api/clients/order_service_client.dart';
import 'package:kyc_client_dart/src/api/clients/storage_service_client.dart';
import 'package:kyc_client_dart/src/api/clients/validator_service_client.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:kyc_client_dart/src/api/models/v1_create_off_ramp_order_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_create_on_ramp_order_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_data_type.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_info_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_order_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_partner_info_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_user_data_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_grant_access_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_init_document_validation_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_init_email_validation_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_init_phone_validation_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_init_storage_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_remove_user_data_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_set_user_data_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_validate_email_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_validate_phone_request.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart' as proto;
import 'package:kyc_client_dart/src/api/protos/google/protobuf/timestamp.pb.dart';
import 'package:kyc_client_dart/src/common.dart';
import 'package:kyc_client_dart/src/config/config.dart';
import 'package:kyc_client_dart/src/models/export.dart';
import 'package:pinenacl/ed25519.dart' hide Signature;
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

typedef SignRequest = Future<Signature> Function(Iterable<int> data);

class KycUserClient {
  KycUserClient({
    required this.sign,
    this.config = const AppConfig.demo(),
  });

  final AppConfig config;
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

  late final StorageServiceClient _storageClient;
  late final ValidatorServiceClient _validatorClient;
  late final OrderServiceClient _orderClient;

  String get authPublicKey => _authPublicKey;

  String get rawSecretKey => _rawSecretKey;

  Future<void> init({required String walletAddress}) async {
    final seed = await _generateSeed();
    await _initializeKeys(seed);
    await _initializeKycClient();
    await _initializeValidatorClient();
    await _initializeOrderClient();

    try {
      final getInfo = await _storageClient.storageServiceGetInfo(
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
    _storageClient = StorageServiceClient(dio, baseUrl: config.storageBaseUrl);
  }

  Future<void> _initializeValidatorClient() async {
    final dio = await _createAuthenticatedClient('validator.espressocash.com');
    _validatorClient =
        ValidatorServiceClient(dio, baseUrl: config.validatorBaseUrl);
  }

  Future<void> _initializeOrderClient() async {
    final dio = await _createAuthenticatedClient('orders.espressocash.com');
    _orderClient = OrderServiceClient(dio, baseUrl: config.orderBaseUrl);
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
    await _storageClient.storageServiceInitStorage(
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

  Future<PartnerModel> getPartnerInfo({required String partnerPK}) =>
      _storageClient
          .storageServiceGetPartnerInfo(
            body: V1GetPartnerInfoRequest(id: partnerPK),
          )
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

    await _storageClient.storageServiceGrantAccess(
      body: V1GrantAccessRequest(
        partnerPublicKey: partnerPK,
        encryptedSecretKey: encodedSecretKey,
      ),
    );
  }

  Future<void> setData({
    Email? email,
    Phone? phone,
    Name? name,
    Document? document,
    BankInfo? bankInfo,
    BirthDate? dob,
    Selfie? selfie,
  }) async {
    final dataList = [
      if (email != null)
        (
          data: proto.Email(value: email.value),
          type: V1DataType.dataTypeEmail,
          id: email.id,
        ),
      if (phone != null)
        (
          data: proto.Phone(value: phone.value),
          type: V1DataType.dataTypePhone,
          id: phone.id,
        ),
      if (name != null)
        (
          data: proto.Name(
            firstName: name.firstName,
            lastName: name.lastName,
          ),
          type: V1DataType.dataTypeName,
          id: name.id,
        ),
      if (document != null)
        (
          data: proto.Document(
            number: document.number,
            type: document.type.toDocumentType(),
            countryCode: document.countryCode,
          ),
          type: V1DataType.dataTypeDocument,
          id: document.id,
        ),
      if (bankInfo != null)
        (
          data: proto.BankInfo(
            bankName: bankInfo.bankName,
            accountNumber: bankInfo.accountNumber,
            bankCode: bankInfo.bankCode,
          ),
          type: V1DataType.dataTypeBankInfo,
          id: bankInfo.id,
        ),
      if (dob != null)
        (
          data: proto.BirthDate(value: Timestamp.fromDateTime(dob.value)),
          type: V1DataType.dataTypeBirthDate,
          id: dob.id
        ),
      if (selfie != null)
        (
          data: proto.SelfieImage(value: selfie.value),
          type: V1DataType.dataTypeSelfieImage,
          id: selfie.id,
        ),
    ];

    for (final item in dataList) {
      final protoData = item.data.writeToBuffer();
      final encryptedData = encryptOnly(
        data: protoData,
        secretBox: _secretBox,
      );

      final hash = generateHash(item.data);
      final message = '${item.type}|$hash';
      final signature = _signingKey.sign(utf8.encode(message));

      if (item.id.isNotEmpty) {
        await _storageClient.storageServiceRemoveUserData(
          body: V1RemoveUserDataRequest(dataId: item.id),
        );
      }

      await _storageClient.storageServiceSetUserData(
        body: V1SetUserDataRequest(
          type: item.type,
          encryptedValue: base64Encode(encryptedData),
          hash: hash,
          signature: base58.encode(signature.signature.asTypedList),
        ),
      );
    }
  }

  Future<UserData> getUserData({
    required String userPK,
    required String secretKey,
    bool includeValues = true,
  }) async {
    final response = await _storageClient.storageServiceGetUserData(
      body: V1GetUserDataRequest(
        userPublicKey: userPK,
        includeValues: includeValues,
      ),
    );

    return processUserData(
      response: response,
      userPK: userPK,
      secretKey: secretKey,
    );
  }

  Future<void> initDocumentValidation({
    required String nameId,
    required String birthDateId,
    required String documentId,
    required String selfieImageId,
  }) async {
    await _validatorClient.validatorServiceInitDocumentValidation(
      body: V1InitDocumentValidationRequest(
        name: nameId,
        birthDate: birthDateId,
        document: documentId,
        selfieImage: selfieImageId,
      ),
    );
  }

  Future<void> initEmailValidation({required String dataId}) async {
    await _validatorClient.validatorServiceInitEmailValidation(
      body: V1InitEmailValidationRequest(dataId: dataId),
    );
  }

  Future<void> validateEmail({
    required String code,
    required String dataId,
  }) async {
    await _validatorClient.validatorServiceValidateEmail(
      body: V1ValidateEmailRequest(code: code, dataId: dataId),
    );
  }

  Future<void> initPhoneValidation({required String dataId}) async {
    await _validatorClient.validatorServiceInitPhoneValidation(
      body: V1InitPhoneValidationRequest(dataId: dataId),
    );
  }

  Future<void> validatePhone({
    required String code,
    required String dataId,
  }) async {
    await _validatorClient.validatorServiceValidatePhone(
      body: V1ValidatePhoneRequest(code: code, dataId: dataId),
    );
  }

  Future<String> createOnRampOrder({
    required String partnerPK,
    required String cryptoAmount,
    required String cryptoCurrency,
    required String fiatAmount,
    required String fiatCurrency,
  }) async {
    final signatureMessage = createUserOnRampMessage(
      cryptoAmount: cryptoAmount,
      cryptoCurrency: cryptoCurrency,
      fiatAmount: fiatAmount,
      fiatCurrency: fiatCurrency,
    );
    final signature = _signingKey.sign(utf8.encode(signatureMessage));

    final response = await _orderClient.orderServiceCreateOnRampOrder(
      body: V1CreateOnRampOrderRequest(
        partnerPublicKey: partnerPK,
        cryptoAmount: cryptoAmount,
        cryptoCurrency: cryptoCurrency,
        fiatAmount: fiatAmount,
        fiatCurrency: fiatCurrency,
        userSignature: base58.encode(signature.signature.asTypedList),
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
    final encryptedBankName = base64Encode(
      encryptOnly(
        data: utf8.encode(bankName),
        secretBox: _secretBox,
      ),
    );

    final encryptedBankAccount = base64Encode(
      encryptOnly(
        data: utf8.encode(bankAccount),
        secretBox: _secretBox,
      ),
    );

    final signatureMessage = createUserOffRampMessage(
      cryptoAmount: cryptoAmount,
      cryptoCurrency: cryptoCurrency,
      fiatAmount: fiatAmount,
      fiatCurrency: fiatCurrency,
      bankName: bankName,
      bankAccount: bankAccount,
    );
    final signature = _signingKey.sign(utf8.encode(signatureMessage));

    final response = await _orderClient.orderServiceCreateOffRampOrder(
      body: V1CreateOffRampOrderRequest(
        partnerPublicKey: partnerPK,
        cryptoAmount: cryptoAmount,
        cryptoCurrency: cryptoCurrency,
        fiatAmount: fiatAmount,
        fiatCurrency: fiatCurrency,
        bankName: encryptedBankName,
        bankAccount: encryptedBankAccount,
        userSignature: base58.encode(signature.signature.asTypedList),
      ),
    );

    return response.orderId;
  }

  Future<Order> getOrder({
    required OrderId orderId,
  }) async {
    final response = await _orderClient.orderServiceGetOrder(
      body: V1GetOrderRequest(
        orderId: orderId.orderId,
        externalId: orderId.externalId,
      ),
    );

    return processOrderData(
      order: response,
      secretKey: rawSecretKey,
    );
  }

  Future<List<Order>> getOrders() async {
    final response = await _orderClient.orderServiceGetOrders();

    return response.orders
        .map(
          (order) => processOrderData(
            order: order,
            secretKey: rawSecretKey,
          ),
        )
        .toList();
  }
}
