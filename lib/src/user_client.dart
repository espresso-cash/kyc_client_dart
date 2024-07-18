import 'dart:convert';
import 'package:cryptography/cryptography.dart' hide SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:http/http.dart';
import 'package:kyc_client_dart/src/data/client.dart';
import 'package:kyc_client_dart/src/models/partner.dart';
import 'package:pinenacl/ed25519.dart' hide Signature;
import 'package:pinenacl/x25519.dart';
import 'package:solana/base58.dart';
import 'package:solana/solana.dart';

export 'models/partner.dart';

typedef SignRequest = Future<Signature> Function(Iterable<int> data);

class KycUserClient {
  KycUserClient({
    this.baseUrl,
    required this.sign,
  });

  final String? baseUrl;
  final SignRequest sign;

  static const _seedMessage = 'hello';
  static const _proofMessage = 'walletProofMessage';

  late SimpleKeyPair _authKeyPair;
  String _authPublicKey = '';
  String _token = '';

  late SimpleKeyPair _encryptionKeyPair;
  late SecretKey _secretKey;

  String _encryptedSecretKey = '';
  String _rawSecretKey = '';

  String get authPublicKey => _authPublicKey;
  String get rawSecretKey => _rawSecretKey;

  late SecretBox _secretBox;
  late SigningKey _signingKey;

  late KycApiClient _apiClient;

  Future<void> init() async {
    final seed = await sign(utf8.encode(_seedMessage))
        .then((value) => Uint8List.fromList(value.bytes.sublist(0, 32)));

    _authKeyPair = await Ed25519().newKeyPairFromSeed(seed);
    _authPublicKey = await _authKeyPair
        .extractPublicKey()
        .then((value) => value.bytes)
        .then(base58encode);
    final publicKey = await _authKeyPair.extractPublicKey();

    final adminTokenData = jwt.JWT(
      {
        'admin': true,
      },
      issuer: base58encode(publicKey.bytes),
    );

    _token = adminTokenData.sign(
      jwt.EdDSAPrivateKey(
        await _authKeyPair.extractPrivateKeyBytes() + publicKey.bytes,
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
    );

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

  Future<PartnerModel> getPartnerInfo({required String partnerPK}) async =>
      _apiClient.getPartnerInfo(partnerPK).then((e) => e.partner);

  Future<String> generatePartnerToken(String partnerPK) async {
    final tokenData = jwt.JWT(
      {
        'issuedFor': partnerPK,
      },
      issuer: _authPublicKey,
    );

    return tokenData.sign(
      jwt.EdDSAPrivateKey(
        await _authKeyPair.extractPrivateKeyBytes() +
            base58decode(_authPublicKey),
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
    );
  }

  Future<void> setData({required Map<String, String> data}) async {
    final Map<String, String> encryptedData = {};

    data.forEach((key, value) {
      final signed = _encryptAndSign(utf8.encode(value));

      encryptedData[key] = base64Encode(signed);
    });

    await _apiClient.setData(encryptedData);
  }

  Future<Map<String, String>> getData({
    required List<String> keys,
    required String userPK,
    required String secretKey,
  }) async {
    final response =
        await _apiClient.getData({'keys': keys}).then((e) => e.data);

    final verifyKey = VerifyKey(Uint8List.fromList(base58decode(userPK)));
    final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

    final Map<String, String> results = {};

    for (final key in keys) {
      final signedDataRaw = response[key];

      if (signedDataRaw == null) {
        results[key] = '';
        continue;
      }

      final signedMessage =
          SignedMessage.fromList(signedMessage: base64Decode(signedDataRaw));
      final result =
          verifyKey.verifySignedMessage(signedMessage: signedMessage);

      if (!result) throw Exception('Invalid signature for key: $key');

      final encryptedData = base64Encode(signedMessage.message);
      final decrypted =
          box.decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));

      results[key] = utf8.decode(decrypted);
    }

    return results;
  }

  Future<bool> upload({required Uint8List file, required String name}) async {
    final uploadUrl =
        await _apiClient.createUploadUrl({'fileName': name}).then((e) => e.url);

    final signed = _encryptAndSign(file);

    final response = await put(
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
    final signed = _signingKey.sign(Uint8List.fromList(encrypted));
    return signed;
  }
}
