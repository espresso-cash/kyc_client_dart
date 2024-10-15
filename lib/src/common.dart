import 'dart:convert';

import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';
import 'package:kyc_client_dart/src/api/export.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart';
import 'package:kyc_client_dart/src/models/id_type.dart';
import 'package:kyc_client_dart/src/models/user_profile.dart' as profile;
import 'package:kyc_client_dart/src/models/validation_result.dart';
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

Future<profile.UserProfile> processUserData({
  required KycServiceClient kycClient,
  required String userPK,
  required String secretKey,
}) async {
  final response = await kycClient.kycServiceGetUserData(
    body: V1GetUserDataRequest(userPublicKey: userPK),
  );

  final validationMap = <String, ValidationResult>{};
  final custom = <String, dynamic>{};

  // Process validation data
  for (final encryptedData in response.validationData) {
    final decryptedData = verifyAndDecrypt(
      signedEncryptedData: encryptedData.encryptedData,
      secretKey: secretKey,
      userPK: encryptedData.validatorPublicKey,
    );
    final wrappedData = WrappedValidation.fromBuffer(decryptedData);

    final result = switch (wrappedData.whichData()) {
      WrappedValidation_Data.hash => HashValidationResult(
          dataId: encryptedData.dataId,
          value: wrappedData.hash,
        ),
      WrappedValidation_Data.custom => CustomValidationResult(
          type: wrappedData.custom.type,
          value: utf8.decode(wrappedData.custom.data),
        ),
      WrappedValidation_Data.notSet => null,
    };

    if (result != null) {
      if (result is HashValidationResult) {
        validationMap[result.dataId] = result;
      } else if (result is CustomValidationResult) {
        custom[result.type] = result.value;
      }
    }
  }

  final email = <profile.Email>[];
  final phone = <profile.Phone>[];
  final name = <profile.Name>[];
  final birthDate = <profile.BirthDate>[];
  final document = <profile.Document>[];
  final bankInfo = <profile.BankInfo>[];
  final selfie = <profile.Selfie>[];

  // Process user data
  for (final encryptedData in response.userData) {
    final decryptedData = verifyAndDecrypt(
      signedEncryptedData: encryptedData.encryptedData,
      secretKey: secretKey,
      userPK: userPK,
    );
    final wrappedData = WrappedData.fromBuffer(decryptedData);

    final dataId = encryptedData.id;
    final verificationData = validationMap[dataId] as HashValidationResult?;

    bool verified = false;
    if (verificationData != null) {
      final hash = generateHash(base64Encode(wrappedData.writeToBuffer()));
      verified = hash == verificationData.value;
    }

    switch (wrappedData.whichData()) {
      case WrappedData_Data.email:
        email.add(
          profile.Email(
            value: wrappedData.email,
            dataId: dataId,
            verified: verified,
          ),
        );
      case WrappedData_Data.name:
        name.add(
          profile.Name(
            firstName: wrappedData.name.firstName,
            lastName: wrappedData.name.lastName,
            dataId: dataId,
            verified: verified,
          ),
        );
      case WrappedData_Data.birthDate:
        birthDate.add(
          profile.BirthDate(
            value: wrappedData.birthDate.toDateTime(),
            dataId: dataId,
            verified: verified,
          ),
        );
      case WrappedData_Data.phone:
        phone.add(
          profile.Phone(
            value: wrappedData.phone,
            dataId: dataId,
            verified: verified,
          ),
        );
      case WrappedData_Data.document:
        document.add(
          profile.Document(
            type: wrappedData.document.type.toIdType(),
            number: wrappedData.document.number,
            dataId: dataId,
            verified: verified,
          ),
        );
      case WrappedData_Data.bankInfo:
        bankInfo.add(
          profile.BankInfo(
            bankName: wrappedData.bankInfo.bankName,
            accountNumber: wrappedData.bankInfo.accountNumber,
            bankCode: wrappedData.bankInfo.bankCode,
            dataId: dataId,
            verified: verified,
          ),
        );
      case WrappedData_Data.selfieImage:
        selfie.add(
          profile.Selfie(
            value: wrappedData.selfieImage,
            dataId: dataId,
            verified: verified,
          ),
        );
      case WrappedData_Data.notSet:
        break;
    }
  }

  return profile.UserProfile(
    email: email,
    phone: phone,
    name: name,
    birthDate: birthDate,
    document: document,
    bankInfo: bankInfo,
    selfie: selfie,
    custom: custom,
  );
}
