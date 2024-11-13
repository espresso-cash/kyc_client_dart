import 'dart:convert';
import 'dart:isolate';

import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';
import 'package:kyc_client_dart/src/api/clients/kyc_service_client.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_user_data_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_user_data_response.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart' as proto;
import 'package:kyc_client_dart/src/api/protos/google/protobuf/timestamp.pb.dart';
import 'package:kyc_client_dart/src/models/export.dart';
import 'package:pinenacl/digests.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

export 'models/order_id.dart';
export 'models/validation_result.dart';

const defaultKycBaseUrl = 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app/';
const defaultValidatorBaseUrl = 'https://validator.espressocash.com/';
const defaultOrderBaseUrl =
    'https://kyc-backend-orders-402681483920.europe-west1.run.app/';

String generateHash(proto.WrappedData data) {
  // Normalize Dart timestamp serialization to avoid nanos
  if (data.whichData() == proto.WrappedData_Data.birthDate) {
    data.birthDate = Timestamp()..seconds = data.birthDate.seconds;
  }

  final bytes = data.writeToBuffer();
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

Future<UserData> processUserData({
  required KycServiceClient kycClient,
  required String userPK,
  required String secretKey,
}) async {
  final totalStart = DateTime.now();
  print('Starting processUserData');

  final response = await kycClient.kycServiceGetUserData(
    body: V1GetUserDataRequest(userPublicKey: userPK),
  );
  print(
    'Got API response in: ${DateTime.now().difference(totalStart).inMilliseconds}ms',
  );

  final processingStart = DateTime.now();

  final userData = await Isolate.run(
    () => _processDataInIsolate(
      response: response,
      userPK: userPK,
      secretKey: secretKey,
    ),
  );

  print(
    'Total processing time: ${DateTime.now().difference(processingStart).inMilliseconds}ms',
  );
  print(
    'Total time: ${DateTime.now().difference(totalStart).inMilliseconds}ms',
  );
  return userData;
}

UserData _processDataInIsolate({
  required V1GetUserDataResponse response,
  required String userPK,
  required String secretKey,
}) {
  final validationMap = <String, ValidationResult>{};
  Map<String, dynamic>? custom;

  // Process validation data
  for (final encryptedData in response.validationData) {
    final decryptedData = verifyAndDecrypt(
      signedEncryptedData: encryptedData.encryptedData,
      secretKey: secretKey,
      userPK: encryptedData.validatorPublicKey,
    );
    final wrappedData = proto.WrappedValidation.fromBuffer(decryptedData);

    final result = switch (wrappedData.whichData()) {
      proto.WrappedValidation_Data.hash => HashValidationResult(
          dataId: encryptedData.dataId,
          value: wrappedData.hash.hash,
          status: wrappedData.hash.status,
        ),
      proto.WrappedValidation_Data.custom => CustomValidationResult(
          type: wrappedData.custom.type,
          value: utf8.decode(wrappedData.custom.data),
        ),
      proto.WrappedValidation_Data.notSet => null,
    };

    if (result != null) {
      if (result is HashValidationResult) {
        validationMap[result.dataId] = result;
      } else if (result is CustomValidationResult) {
        custom ??= {};
        custom[result.type] = result.value;
      }
    }
  }

  List<Email>? email;
  List<Phone>? phone;
  List<Name>? name;
  List<BirthDate>? birthDate;
  List<Document>? document;
  List<BankInfo>? bankInfo;
  List<Selfie>? selfie;

  // Process user data
  for (final encryptedData in response.userData) {
    final decryptedData = verifyAndDecrypt(
      signedEncryptedData: encryptedData.encryptedData,
      secretKey: secretKey,
      userPK: userPK,
    );
    final wrappedData = proto.WrappedData.fromBuffer(decryptedData);

    final id = encryptedData.id;
    final verificationData = validationMap[id] as HashValidationResult?;

    ValidationStatus status = ValidationStatus.unspecified;
    if (verificationData != null) {
      final hash = generateHash(wrappedData);
      final bool hashMatching = hash == verificationData.value;

      status = hashMatching
          ? verificationData.status.toValidationStatus()
          : ValidationStatus.unverified;
    }

    switch (wrappedData.whichData()) {
      case proto.WrappedData_Data.email:
        email ??= [];
        email.add(
          Email(
            value: wrappedData.email,
            id: id,
            status: status,
          ),
        );
      case proto.WrappedData_Data.name:
        name ??= [];
        name.add(
          Name(
            firstName: wrappedData.name.firstName,
            lastName: wrappedData.name.lastName,
            id: id,
            status: status,
          ),
        );
      case proto.WrappedData_Data.birthDate:
        birthDate ??= [];
        birthDate.add(
          BirthDate(
            value: wrappedData.birthDate.toDateTime(),
            id: id,
            status: status,
          ),
        );
      case proto.WrappedData_Data.phone:
        phone ??= [];
        phone.add(
          Phone(
            value: wrappedData.phone,
            id: id,
            status: status,
          ),
        );
      case proto.WrappedData_Data.document:
        document ??= [];
        document.add(
          Document(
            type: wrappedData.document.type.toIdType(),
            number: wrappedData.document.number,
            countryCode: wrappedData.document.countryCode,
            id: id,
            status: status,
          ),
        );
      case proto.WrappedData_Data.bankInfo:
        bankInfo ??= [];
        bankInfo.add(
          BankInfo(
            bankName: wrappedData.bankInfo.bankName,
            accountNumber: wrappedData.bankInfo.accountNumber,
            bankCode: wrappedData.bankInfo.bankCode,
            id: id,
            status: status,
          ),
        );
      case proto.WrappedData_Data.selfieImage:
        selfie ??= [];
        selfie.add(
          Selfie(
            value: wrappedData.selfieImage,
            id: id,
            status: status,
          ),
        );
      case proto.WrappedData_Data.notSet:
        break;
    }
  }

  return UserData(
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
