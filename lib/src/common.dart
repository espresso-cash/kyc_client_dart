import 'dart:convert';

import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';
import 'package:pinenacl/digests.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

export 'models/order_id.dart';
export 'models/validation_result.dart';

const defaultKycBaseUrl = 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app/';
const defaultValidatorBaseUrl = 'https://validator.espressocash.com/';

String generateHash(String value) {
  final bytes = utf8.encode(value);
  final digest = Hash.sha256(bytes);
  return hex.encode(digest);
}

SignedMessage encryptAndSign({
  required Uint8List data,
  required SecretBox secretBox,
  required SigningKey signingKey,
}) {
  final encrypted = secretBox.encrypt(data);
  return signingKey.sign(Uint8List.fromList(encrypted));
}

Uint8List verifyAndDecrypt({
  required String signedEncryptedData,
  required String userPK,
  required String secretKey,
}) {
  final verifyKey = VerifyKey(Uint8List.fromList(base58.decode(userPK)));
  final box = SecretBox(Uint8List.fromList(base58.decode(secretKey)));

  final signedMessage = SignedMessage.fromList(
    signedMessage: base64Decode(signedEncryptedData),
  );

  if (!verifyKey.verifySignedMessage(signedMessage: signedMessage)) {
    throw Exception('Invalid signature for user data');
  }

  final encryptedData = Uint8List.fromList(signedMessage.message);
  final decrypted = box.decrypt(
    EncryptedMessage(
      nonce: encryptedData.sublist(0, TweetNaCl.nonceLength),
      cipherText: encryptedData.sublist(TweetNaCl.nonceLength),
    ),
  );

  return decrypted;
}
