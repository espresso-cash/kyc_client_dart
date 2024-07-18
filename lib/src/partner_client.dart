import 'dart:convert';

import 'package:cryptography/cryptography.dart' hide SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:http/http.dart';
import 'package:kyc_client_dart/src/data/client.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/x25519.dart';
import 'package:solana/base58.dart';

class KycPartnerClient {
  KycPartnerClient({
    required this.authKeyPair,
    this.baseUrl,
  });

  final SimpleKeyPair authKeyPair;
  final String? baseUrl;

  late String _authPublicKey;

  late String _token;
  late KycApiClient _apiClient;

  Future<void> generateAuthToken(String partnerToken) async {
    _authPublicKey = await authKeyPair
        .extractPublicKey()
        .then((value) => value.bytes)
        .then(base58encode);

    final partnerTokenData = jwt.JWT(
      {'delegated': partnerToken},
      issuer: _authPublicKey,
    );

    _token = partnerTokenData.sign(
      jwt.EdDSAPrivateKey(
        await authKeyPair.extractPrivateKeyBytes() +
            base58decode(_authPublicKey),
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
    );

    _apiClient = KycApiClient(_token, baseUrl: baseUrl);
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

  Future<void> setValidationResult({
    required String key,
    required Map<String, String> value,
  }) async {
    final Map<String, String> encryptedData = {};

    value.forEach((key, value) {
      // final signed = _encryptAndSign(utf8.encode(value));
      //TODO encrypt and sign

      encryptedData[key] = base64Encode(utf8.encode(value));
    });

    await _apiClient.setValidationResult({key: json.encode(value)});
  }

  Future<Map<String, dynamic>> getValidationResult({
    required String key,
    required String validatorPK,
  }) async {
    final response = await _apiClient
        .getValidationResult(
          ValidationRequestDto(
            key: key,
            validatorPK: validatorPK,
          ),
        )
        .then((e) => e.data);

    //TODO decrypt and verify

    print(response);

    return {};
  }

  Future<Uint8List> download({
    required String filename,
    required String userPK,
    required String secretKey,
  }) async {
    final downloadUrl = await _apiClient
        .createDownloadUrl({'fileName': filename}).then((e) => e.data);

    final response = await get(Uri.parse(downloadUrl));
    final encryptedData = response.bodyBytes;

    final verifyKey = VerifyKey(Uint8List.fromList(base58decode(userPK)));
    final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

    final signedMessage = SignedMessage.fromList(signedMessage: encryptedData);
    final result = verifyKey.verifySignedMessage(signedMessage: signedMessage);

    if (!result) throw Exception('Invalid signature');

    final data = base64Encode(signedMessage.message);
    final decrypted =
        box.decrypt(EncryptedMessage.fromList(base64Decode(data)));

    return decrypted;
  }
}
