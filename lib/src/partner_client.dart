import 'dart:convert';

import 'package:cryptography/cryptography.dart' hide Hash, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:http/http.dart';
import 'package:kyc_client_dart/src/api/export.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:pinenacl/digests.dart';
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
  late KycServiceClient _apiClient;

  late SecretBox _secretBox;
  late SigningKey _signingKey;

  Future<void> init({
    required String partnerToken,
    required String secretKey,
  }) async {
    await _generateAuthToken(partnerToken);
    await _initializeEncryption(secretKey);
  }

  Future<void> _generateAuthToken(String partnerToken) async {
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

    final dio = Dio()..interceptors.add(AuthInterceptor(_token));
    _apiClient = KycServiceClient(dio, baseUrl: baseUrl);
  }

  Future<Map<String, String>> getData({
    required List<DataInfoKeys> keys,
    required String userPK,
    required String secretKey,
  }) async {
    final response = await _apiClient.getData(
      {'keys': keys.map((e) => e.value).toList()},
    ).then((e) => e.data);

    final verifyKey = VerifyKey(Uint8List.fromList(base58decode(userPK)));
    final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

    final Map<String, String> results = {};

    for (final key in keys) {
      final signedDataRaw =
          response.firstWhereOrNull((e) => e.key == key.value);

      if (signedDataRaw == null) {
        results[key.value] = '';
        continue;
      }

      final signedMessage = SignedMessage.fromList(
        signedMessage: base64Decode(signedDataRaw.value),
      );
      final result =
          verifyKey.verifySignedMessage(signedMessage: signedMessage);

      if (!result) throw Exception('Invalid signature for key: $key');

      final encryptedData = base64Encode(signedMessage.message);
      final decrypted =
          box.decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));

      results[key.value] = utf8.decode(decrypted);
    }

    return results;
  }

  Future<void> setValidationResult({
    required String value,
    required V1ValidationData value,
  }) async {
    final valueBytes = utf8.encode(value);
    final signedEncrypted = _encryptAndSign(Uint8List.fromList(valueBytes));

    await _apiClient.kycServiceSetValidationResult(
      // DataEntry(key: key.value, value: base64Encode(signedEncrypted.toList())),
      body: const V1SetValidationResultRequest(
        data: V1ValidationData(
          email: '',
          phone: '',
          kycSmileId: '',
        ),
      ),
    );
  }

  Future<String> getValidationResult({
    required ValidationResultKeys key,
    required String validatorPK,
    required String secretKey,
  }) async {
    final response = await _apiClient
        .getValidationResult(
          ValidationRequestDto(
            key: key.value,
            validator: validatorPK,
          ),
        )
        .then((e) => e.value);

    final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

    final signedMessage = SignedMessage.fromList(
      signedMessage: base64Decode(response),
    );

    final encryptedData = base64Encode(signedMessage.message);
    final decrypted =
        box.decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));

    return utf8.decode(decrypted);
  }

  Future<Uint8List> download({
    required DataFileKeys key,
    required String userPK,
    required String secretKey,
  }) async {
    final downloadUrl = await _apiClient
        .createDownloadUrl({'fileName': key.value}).then((e) => e.url);

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

  Future<void> validateField(
    ValidationResultKeys key,
    String validatedField,
  ) async {
    await setValidationResult(
      key: key,
      value: await _hash(validatedField),
    );
  }

  Future<String> _hash(String value) async {
    const hex = Base16Encoder.instance;

    const hasher = Hash.blake2b;
    final hash = hex.encode(hasher(value));

    return hash;
  }

  Future<void> _initializeEncryption(String secretKey) async {
    final secretKeyBytes = base58decode(secretKey);
    _secretBox = SecretBox(Uint8List.fromList(secretKeyBytes));
    _signingKey = SigningKey.fromValidBytes(
      Uint8List.fromList(
        await authKeyPair.extractPrivateKeyBytes() +
            base58decode(_authPublicKey),
      ),
    );
  }

  SignedMessage _encryptAndSign(Uint8List data) {
    final encrypted = _secretBox.encrypt(data);
    return _signingKey.sign(Uint8List.fromList(encrypted));
  }
}
