import 'dart:convert';
import 'package:cryptography/cryptography.dart' hide SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/src/api/export.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:kyc_client_dart/src/models/partner.dart';
import 'package:pinenacl/ed25519.dart' hide Signature;
import 'package:pinenacl/x25519.dart';
import 'package:solana/base58.dart';
import 'package:solana/solana.dart';

export 'models/partner.dart';

typedef SignRequest = Future<Signature> Function(Iterable<int> data);

class KycUserClient {
  KycUserClient({required this.sign, this.baseUrl});

  final String? baseUrl;
  final SignRequest sign;

  static const _seedMessage = 'hello';
  static const _proofMessage = 'walletProofMessage';

  late final SimpleKeyPair _authKeyPair;
  late final String _authPublicKey;
  late final String _token;
  late final SimpleKeyPair _encryptionKeyPair;
  late final SecretKey _secretKey;
  late final String _encryptedSecretKey;
  late final String _rawSecretKey;
  late final SecretBox _secretBox;
  late final SigningKey _signingKey;
  late final KycServiceClient _apiClient;

  String get authPublicKey => _authPublicKey;
  String get rawSecretKey => _rawSecretKey;

  Future<void> init({required String walletAddress}) async {
    final seed = await _generateSeed();
    await _initializeKeys(seed);
    await _initializeToken();
    _initializeApiClient();

    try {
      final getInfo = await _apiClient.kycServiceGetInfo();
      await _initializeEncryption(
        seed,
        encryptedSecretKey: getInfo.encryptedSecretKey,
      );
    } on DioException catch (e) {
      if (e.response?.statusCode != 404) rethrow;
      await _initializeEncryption(seed);
      await _initStorage(walletAddress: walletAddress);
    }
  }

  Future<Uint8List> _generateSeed() async {
    final signature = await sign(utf8.encode(_seedMessage));
    return Uint8List.fromList(signature.bytes.sublist(0, 32));
  }

  Future<void> _initializeKeys(Uint8List seed) async {
    _authKeyPair = await Ed25519().newKeyPairFromSeed(seed);
    _authPublicKey = base58encode(
      await _authKeyPair.extractPublicKey().then((value) => value.bytes),
    );
  }

  Future<void> _initializeToken() async {
    final publicKey = await _authKeyPair.extractPublicKey();
    final adminTokenData = jwt.JWT({'admin': true}, issuer: _authPublicKey);
    _token = adminTokenData.sign(
      jwt.EdDSAPrivateKey(
        await _authKeyPair.extractPrivateKeyBytes() + publicKey.bytes,
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
    );
  }

  Future<void> _initializeEncryption(
    Uint8List seed, {
    String? encryptedSecretKey,
  }) async {
    _encryptionKeyPair = await X25519().newKeyPairFromSeed(seed);
    final encryptionSK = PrivateKey(
      Uint8List.fromList(await _encryptionKeyPair.extractPrivateKeyBytes()),
    );
    final sealedBox = SealedBox(encryptionSK);

    _secretKey = encryptedSecretKey == null
        ? await Chacha20.poly1305Aead().newSecretKey()
        : SecretKey(sealedBox.decrypt(base64Decode(encryptedSecretKey)));

    _rawSecretKey = base58encode(await _secretKey.extractBytes());
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

  void _initializeApiClient() {
    final dio = Dio()..interceptors.add(AuthInterceptor(_token));
    _apiClient = KycServiceClient(dio, baseUrl: baseUrl);
  }

  Future<void> _initStorage({required String walletAddress}) async {
    final proofSignature = await sign(utf8.encode(_proofMessage));
    await _apiClient.kycServiceInitStorage(
      body: V1InitStorageRequest(
        walletAddress: walletAddress,
        message: _seedMessage,
        encryptedSecretKey: _encryptedSecretKey,
        walletProofMessage: _proofMessage,
        walletProofSignature: proofSignature.toBase58(),
      ),
    );
  }

  Future<PartnerModel> getPartnerInfo({required String partnerPK}) => _apiClient
      .kycServiceGetPartnerInfo(body: V1GetPartnerInfoRequest(id: partnerPK))
      .then((e) => PartnerModel.fromJson(e.toJson()));

  Future<String> generatePartnerToken(String partnerPK) async {
    final tokenData = jwt.JWT({'issuedFor': partnerPK}, issuer: _authPublicKey);
    return tokenData.sign(
      jwt.EdDSAPrivateKey(
        await _authKeyPair.extractPrivateKeyBytes() +
            base58decode(_authPublicKey),
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
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

    await _apiClient.kycServiceSetData(
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
    final response =
        await _apiClient.kycServiceGetData().then((e) => e.data.toJson());
    final verifyKey = VerifyKey(Uint8List.fromList(base58decode(userPK)));
    final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

    return Map.fromEntries(
      await Future.wait(
        response.entries.map((entry) async {
          final signedDataRaw = entry.value as String;
          final signedMessage = SignedMessage.fromList(
            signedMessage: base64Decode(signedDataRaw),
          );

          if (!verifyKey.verifySignedMessage(signedMessage: signedMessage)) {
            throw Exception('Invalid signature for key: ${entry.key}');
          }

          final encryptedData = base64Encode(signedMessage.message);
          final decrypted = box
              .decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));

          return MapEntry(
            entry.key,
            entry.key == 'photoSelfie' || entry.key == 'photoIdCard'
                ? decrypted
                : utf8.decode(decrypted),
          );
        }),
      ),
    );
  }

  SignedMessage _encryptAndSign(Uint8List data) {
    final encrypted = _secretBox.encrypt(data);
    return _signingKey.sign(Uint8List.fromList(encrypted));
  }
}
