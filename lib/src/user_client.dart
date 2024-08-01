import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:cryptography/cryptography.dart' hide SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:http/http.dart' as http;
import 'package:kyc_client_dart/src/data/client.dart';
import 'package:kyc_client_dart/src/models/keys.dart';
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

  // Authentication-related variables
  late final SimpleKeyPair _authKeyPair;
  late final String _authPublicKey;
  late final String _token;

  // Encryption-related variables
  late final SimpleKeyPair _encryptionKeyPair;
  late final SecretKey _secretKey;
  late final String _encryptedSecretKey;
  late final String _rawSecretKey;
  late final SecretBox _secretBox;

  // Signing-related variable
  late final SigningKey _signingKey;

  // API client
  late final KycApiClient _apiClient;

  String get authPublicKey => _authPublicKey;
  String get rawSecretKey => _rawSecretKey;

  Future<void> init() async {
    final seed = await _generateSeed();
    await _initializeKeys(seed);
    await _initializeToken();
    await _initializeEncryption(seed);
    _initializeApiClient();
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

  Future<void> _initializeEncryption(Uint8List seed) async {
    _secretKey = await Chacha20.poly1305Aead().newSecretKey();
    _rawSecretKey = base58encode(await _secretKey.extractBytes());
    _encryptionKeyPair = await X25519().newKeyPairFromSeed(seed);
    final encryptionSK = PrivateKey(
      Uint8List.fromList(await _encryptionKeyPair.extractPrivateKeyBytes()),
    );
    final encryptionPK = encryptionSK.publicKey;
    final sealedBox = SealedBox(encryptionPK);
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
    _apiClient = KycApiClient(_token, baseUrl: baseUrl);
  }

  Future<void> initStorage({required String walletAddress}) async {
    final proofSignature = await sign(utf8.encode(_proofMessage));
    await _apiClient.initStorage(
      InitStorageRequest(
        walletAddress: walletAddress,
        message: _seedMessage,
        encryptedSecretKey: _encryptedSecretKey,
        walletProofMessage: _proofMessage,
        walletProofSignature: proofSignature.toBase58(),
      ),
    );
  }

  Future<PartnerModel> getPartnerInfo({required String partnerPK}) =>
      _apiClient.getPartnerInfo(GetPartnerInfoRequestDto(id: partnerPK));

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

  Future<void> setData({required Map<DataInfoKeys, String> data}) async {
    final encryptedData = data.entries.map((entry) {
      final signed = _encryptAndSign(utf8.encode(entry.value));
      return DataEntry(key: entry.key.value, value: base64Encode(signed));
    }).toList();

    await _apiClient.setData(SetDataRequestDto(data: encryptedData));
  }

  Future<Map<String, String>> getData({
    required List<DataInfoKeys> keys,
    required String userPK,
    required String secretKey,
  }) async {
    final response = await _apiClient.getData({'keys': keys});
    final verifyKey = VerifyKey(Uint8List.fromList(base58decode(userPK)));
    final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

    return Map.fromEntries(
      await Future.wait(
        keys.map((key) async {
          final signedDataRaw =
              response.data.firstWhereOrNull((e) => e.key == key.value);
          if (signedDataRaw == null) return MapEntry(key.value, '');

          final signedMessage = SignedMessage.fromList(
            signedMessage: base64Decode(signedDataRaw.value),
          );
          if (!verifyKey.verifySignedMessage(signedMessage: signedMessage)) {
            throw Exception('Invalid signature for key: $key');
          }

          final encryptedData = base64Encode(signedMessage.message);
          final decrypted = box
              .decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));
          return MapEntry(key.value, utf8.decode(decrypted));
        }),
      ),
    );
  }

  Future<bool> upload({
    required Uint8List file,
    required DataFileKeys key,
  }) async {
    final uploadUrl = await _apiClient
        .createUploadUrl({'fileName': key.value}).then((e) => e.url);
    final signed = _encryptAndSign(file);

    final response = await http.put(
      Uri.parse(uploadUrl),
      headers: {
        'Content-Type': 'application/octet-stream',
        'Content-Length': signed.length.toString(),
      },
      body: signed,
    );

    return response.statusCode == 200;
  }

  SignedMessage _encryptAndSign(Uint8List data) {
    final encrypted = _secretBox.encrypt(data);
    return _signingKey.sign(Uint8List.fromList(encrypted));
  }
}
