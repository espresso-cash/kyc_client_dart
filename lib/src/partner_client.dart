import 'dart:convert';

import 'package:cryptography/cryptography.dart' hide SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:http/http.dart';
import 'package:kyc_client_dart/src/config.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/x25519.dart';
import 'package:solana/base58.dart';

class KycPartnerClient {
  KycPartnerClient({this.baseUrl = serverUrl});
  final String? baseUrl;

  late String _authToken;

  late SimpleKeyPair? _authKeyPair;
  String _authPublicKey = '';

  String get authPublicKey => _authPublicKey;

  Future<void> init() async {
    _authKeyPair = await Ed25519().newKeyPairFromSeed(
      base58decode('8ui6TQMfAudigNuKycopDyZ6irMeS7DTSe73d2gzv1Hz'),
    );
    _authPublicKey = await _authKeyPair!
        .extractPublicKey()
        .then((value) => value.bytes)
        .then(base58encode);
  }

  Future<void> generateAuthToken(String partnerToken) async {
    final partnerTokenData = jwt.JWT(
      {'delegated': partnerToken},
      issuer: _authPublicKey,
    );

    _authToken = partnerTokenData.sign(
      jwt.EdDSAPrivateKey(
        await _authKeyPair!.extractPrivateKeyBytes() +
            base58decode(_authPublicKey),
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
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
        'Authorization': 'Bearer $_authToken',
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

  Future<void> setValidationResult({
    required String key,
    required Map<String, dynamic> value,
  }) async {
    final response = await post(
      Uri.parse('$baseUrl/v1/setValidationResult'),
      headers: {
        'Authorization': 'Bearer $_authToken',
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'keys': value,
      }),
    );

    print(response); //TODO
  }
}
