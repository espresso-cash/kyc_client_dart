import 'dart:convert';

import 'package:cryptography/cryptography.dart' hide SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:http/http.dart';
import 'package:kyc_client_dart/src/config.dart';
import 'package:kyc_client_dart/src/partner.dart';
import 'package:pinenacl/ed25519.dart' hide Signature;
import 'package:pinenacl/x25519.dart';
import 'package:solana/base58.dart';
import 'package:solana/solana.dart';

export 'partner.dart';

typedef SignRequest = Future<Signature> Function(Iterable<int> data);

class KycUserClient {
  KycUserClient({
    this.baseUrl = serverUrl,
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
  }

  Future<void> initStorage({required String walletAddress}) async {
    final proofSignature = await sign(utf8.encode(_proofMessage));

    await post(
      Uri.parse('$baseUrl/v1/initStorage'),
      headers: {
        'Authorization': 'Bearer $_token',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'walletAddress': walletAddress,
        'message': _seedMessage,
        'encryptedSecretKey': _encryptedSecretKey,
        'walletProofMessage': _proofMessage,
        'walletProofSignature': proofSignature.toBase58(),
      }),
    );
  }

  Future<PartnerModel> getPartnerInfo({required String partnerPK}) async {
    final response = await post(
      Uri.parse('$baseUrl/v1/partners/$partnerPK'),
      headers: {
        'Authorization': 'Bearer $_token',
        'Content-Type': 'application/json',
      },
    );

    final data = json.decode(response.body) as Map<String, dynamic>;
    final partner = data['partner'] as Map<String, dynamic>;

    return PartnerModel.fromJson(partner);
  }

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
    final box = SecretBox(Uint8List.fromList(await _secretKey.extractBytes()));

    final signingKey = SigningKey.fromValidBytes(
      Uint8List.fromList(
        await _authKeyPair.extractPrivateKeyBytes() +
            (await _authKeyPair.extractPublicKey()).bytes,
      ),
    );

    final Map<String, String> encryptedData = {};

    data.forEach((key, value) {
      final encrypted = box.encrypt(utf8.encode(value));
      final signed = signingKey.sign(Uint8List.fromList(encrypted));
      encryptedData[key] = base64Encode(signed);
    });

    await post(
      Uri.parse('$baseUrl/v1/setData'),
      headers: {
        'Authorization': 'Bearer $_token',
        'Content-Type': 'application/json',
      },
      body: json.encode(encryptedData),
    );
  }

  Future<Map<String, String>> getData({
    required List<String> keys,
    required String userPK,
    required String secretKey,
  }) async {
    final response = await post(
      Uri.parse('$baseUrl/v1/getData'),
      headers: {
        'Authorization': 'Bearer $_token',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'keys': keys,
      }),
    );

    // ignore: avoid_dynamic_calls
    final data = json.decode(response.body)['data'] as Map<String, dynamic>;

    final verifyKey = VerifyKey(Uint8List.fromList(base58decode(userPK)));
    final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

    final Map<String, String> results = {};

    for (final key in keys) {
      final signedDataRaw = data[key] as String;
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

  Future<String> createUploadUrl(String filename) async {
    final response = await post(
      Uri.parse('$baseUrl/v1/createDownloadUrl'),
      headers: {
        'Authorization': 'Bearer $_token',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'fileName': filename,
      }),
    );

    final data = json.decode(response.body) as Map<String, dynamic>;

    return data['data'] as String;
  }
}
