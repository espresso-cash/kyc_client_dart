import 'dart:convert';

import 'package:cryptography/cryptography.dart' hide Hash, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
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
        response.entries.map((key) async {
          final signedDataRaw = key.value as String;

          final signedMessage = SignedMessage.fromList(
            signedMessage: base64Decode(signedDataRaw),
          );

          if (signedDataRaw.isEmpty) return MapEntry(key.key, '');

          if (!verifyKey.verifySignedMessage(signedMessage: signedMessage)) {
            throw Exception('Invalid signature for key: $key');
          }

          final encryptedData = base64Encode(signedMessage.message);
          final decrypted = box
              .decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));

          if (key.key == 'photoSelfie' || key.key == 'photoIdCard') {
            return MapEntry(key.key, decrypted);
          }

          return MapEntry(key.key, utf8.decode(decrypted));
        }),
      ),
    );
  }

  Future<void> setValidationResult({
    required V1ValidationData value,
  }) async {
    final encryptedValue = value.encryptAndSign(_encryptAndSign);

    await _apiClient.kycServiceSetValidationResult(
      body: V1SetValidationResultRequest(data: encryptedValue),
    );
  }

  Future<String> getValidationResult({
    required String key,
    required String validatorPK,
    required String secretKey,
  }) async {
    final response = await _apiClient
        .kycServiceGetValidationResult(
          body: V1GetValidationResultRequest(
            publicKey: validatorPK,
          ),
        )
        .then((e) => e.data);

    print(response);

    // final box = SecretBox(Uint8List.fromList(base58decode(secretKey)));

    // final signedMessage = SignedMessage.fromList(
    //   signedMessage: base64Decode(response),
    // );

    // final encryptedData = base64Encode(signedMessage.message);
    // final decrypted =
    //     box.decrypt(EncryptedMessage.fromList(base64Decode(encryptedData)));

    // return utf8.decode(decrypted);

    return '';
  }

  Future<void> validateField(
    String key,
    String validatedField,
  ) async {
    // await setValidationResult(
    //   key: key,
    //   value: await _hash(validatedField),
    // );
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

extension V1ValidationDataExtensions on V1ValidationData {
  V1ValidationData encryptAndSign(
    SignedMessage Function(Uint8List) encryptAndSign,
  ) =>
      V1ValidationData(
        email: _encryptAndEncode(email, encryptAndSign),
        phone: _encryptAndEncode(phone, encryptAndSign),
        kycSmileId: _encryptAndEncode(kycSmileId, encryptAndSign),
      );

  String? _encryptAndEncode(
    String? value,
    SignedMessage Function(Uint8List) encryptAndSign,
  ) {
    if (value == null) return null;
    final encryptedData =
        encryptAndSign(Uint8List.fromList(utf8.encode(value)));
    return base64Encode(encryptedData);
  }
}
