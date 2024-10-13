import 'dart:convert';
import 'package:bs58/bs58.dart';
import 'package:cryptography/cryptography.dart' hide PublicKey, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/src/api/export.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:kyc_client_dart/src/models/partner.dart';
import 'package:pinenacl/ed25519.dart' hide Signature;
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

export 'models/partner.dart';

typedef SignRequest = Future<Signature> Function(Iterable<int> data);

const _defaultKycBaseUrl = 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app/';
const _defaultValidatorBaseUrl = 'https://validator.espressocash.com/';

class KycUserClient {
  KycUserClient({
    required this.sign,
    this.kycBaseUrl = _defaultKycBaseUrl,
    this.validatorBaseUrl = _defaultValidatorBaseUrl,
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
    required V1UserData data,
    required Uint8List? selfie,
    required Uint8List? idCard,
  }) async {
    final encryptedData = _encryptUserData(data);
    final photoSelfie =
        selfie != null ? base64Encode(_encryptAndSign(selfie)) : null;
    final photoIdCard =
        idCard != null ? base64Encode(_encryptAndSign(idCard)) : null;

    await _kycClient.kycServiceSetData(
      body: V1SetDataRequest(
        data: V1UserData(
          email: encryptedData['email'],
          phone: encryptedData['phone'],
          firstName: encryptedData['firstName'],
          middleName: encryptedData['middleName'],
          lastName: encryptedData['lastName'],
          dob: encryptedData['dob'],
          countryCode: encryptedData['countryCode'],
          idType: encryptedData['idType'],
          idNumber: encryptedData['idNumber'],
          photoIdCard: photoIdCard,
          photoSelfie: photoSelfie,
          bankCode: encryptedData['bankCode'],
          bankAccountNumber: encryptedData['bankAccountNumber'],
        ),
      ),
    );
  }

  Map<String, String?> _encryptUserData(V1UserData data) => Map.fromEntries(
        data.toJson().entries.map((entry) {
          final value = entry.value as String?;
          if (value == null) return MapEntry(entry.key, null);
          return MapEntry(
            entry.key,
            base64Encode(_encryptAndSign(utf8.encode(value))),
          );
        }),
      );

  Future<Map<String, dynamic>> getData({
    required String userPK,
    required String secretKey,
  }) async {
    final response = await _kycClient
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

  Future<V1GetOrderResponse> getOrder(String orderId) async =>
      _kycClient.kycServiceGetOrder(
        body: V1GetOrderRequest(orderId: orderId),
      );

  Future<V1GetOrdersResponse> getOrders() async =>
      _kycClient.kycServiceGetOrders();

  SignedMessage _encryptAndSign(Uint8List data) {
    final encrypted = _secretBox.encrypt(data);
    return _signingKey.sign(Uint8List.fromList(encrypted));
  }
}
