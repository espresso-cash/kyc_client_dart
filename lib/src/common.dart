import 'dart:convert';
import 'dart:isolate';

import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';
import 'package:kyc_client_dart/src/api/models/v1_data_type.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_order_response.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_user_data_response.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart' as proto;
import 'package:kyc_client_dart/src/api/protos/google/protobuf/timestamp.pb.dart';
import 'package:kyc_client_dart/src/models/export.dart';
import 'package:pinenacl/digests.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';
import 'package:protobuf/protobuf.dart';

export 'models/order_id.dart';
export 'models/validation_result.dart';

String generateHashFromProto(GeneratedMessage data) {
  // Normalize Dart timestamp serialization to avoid nanos
  if (data.runtimeType == proto.BirthDate) {
    final value = data as proto.BirthDate;
    data = proto.BirthDate(value: Timestamp()..seconds = value.value.seconds);
  }

  final bytes = data.writeToBuffer();
  final digest = Hash.sha256(bytes);

  return hex.encode(digest);
}

String generateHash(Uint8List data) {
  final digest = Hash.sha256(data);

  return hex.encode(digest);
}

Future<SignedMessage> encryptAndSign({
  required Uint8List data,
  required SecretBox secretBox,
  required SigningKey signingKey,
}) {
  final shouldRunAsync = !_isWeb && data.length > _encryptionAsyncThreshold;

  SignedMessage encrypt() => _encryptAndSignSync(
        data: data,
        secretBox: secretBox,
        signingKey: signingKey,
      );

  return shouldRunAsync ? Isolate.run(encrypt) : Future.value(encrypt());
}

SignedMessage _encryptAndSignSync({
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

Uint8List encryptOnly({
  required Uint8List data,
  required SecretBox secretBox,
}) {
  final cipherText = secretBox.encrypt(data);

  return Uint8List.fromList([
    ...cipherText.nonce,
    ...cipherText.cipherText,
  ]);
}

String decryptOnly({
  required String encryptedData,
  required String secretKey,
}) {
  try {
    final box = SecretBox(Uint8List.fromList(base58.decode(secretKey)));
    final data = base64Decode(encryptedData);

    final decrypted = box.decrypt(
      EncryptedMessage(
        nonce: data.sublist(0, TweetNaCl.nonceLength),
        cipherText: data.sublist(TweetNaCl.nonceLength),
      ),
    );

    return utf8.decode(decrypted);
  } on Object catch (_) {
    return encryptedData;
  }
}

Future<UserData> processUserData({
  required V1GetUserDataResponse response,
  required String userPK,
  required String secretKey,
}) async {
  if (_isWeb) {
    return _processUserData(
      response: response,
      userPK: userPK,
      secretKey: secretKey,
    );
  }

  return Isolate.run(
    () => _processUserData(
      response: response,
      userPK: userPK,
      secretKey: secretKey,
    ),
  );
}

UserData _processUserData({
  required V1GetUserDataResponse response,
  required String userPK,
  required String secretKey,
}) {
  final validationMap = {
    for (final data in response.validationData)
      data.dataId: HashValidationResult(
        dataId: data.dataId,
        hash: data.hash,
        status: data.status.toApiValidationStatus(),
      ),
  };

  Email? email;
  Phone? phone;
  Name? name;
  BirthDate? birthDate;
  Document? document;
  BankInfo? bankInfo;
  Selfie? selfie;

  // Process user data
  for (final encryptedData in response.userData) {
    final decryptedData = verifyAndDecrypt(
      signedEncryptedData: encryptedData.encryptedValue,
      secretKey: secretKey,
      userPK: userPK,
    );

    final id = encryptedData.id;

    final verificationData = validationMap[id];
    final status = verificationData?.status ?? ValidationStatus.unspecified;

    switch (encryptedData.type) {
      case V1DataType.dataTypeEmail:
        final wrappedData = proto.Email.fromBuffer(decryptedData);
        email = Email(
          value: wrappedData.value,
          id: id,
          status: status,
        );
      case V1DataType.dataTypeName:
        final wrappedData = proto.Name.fromBuffer(decryptedData);
        name = Name(
          firstName: wrappedData.firstName,
          lastName: wrappedData.lastName,
          id: id,
          status: status,
        );
      case V1DataType.dataTypeBirthDate:
        final wrappedData = proto.BirthDate.fromBuffer(decryptedData);
        birthDate = BirthDate(
          value: wrappedData.value.toDateTime(),
          id: id,
          status: status,
        );
      case V1DataType.dataTypePhone:
        final wrappedData = proto.Phone.fromBuffer(decryptedData);
        phone = Phone(
          value: wrappedData.value,
          id: id,
          status: status,
        );
      case V1DataType.dataTypeDocument:
        final wrappedData = proto.Document.fromBuffer(decryptedData);
        document = Document(
          type: wrappedData.type.toIdType(),
          number: wrappedData.number,
          countryCode: wrappedData.countryCode,
          id: id,
          status: status,
        );
      case V1DataType.dataTypeBankInfo:
        final wrappedData = proto.BankInfo.fromBuffer(decryptedData);
        bankInfo = BankInfo(
          bankName: wrappedData.bankName,
          accountNumber: wrappedData.accountNumber,
          bankCode: wrappedData.bankCode,
          id: id,
          status: status,
        );
      case V1DataType.dataTypeSelfieImage:
        final wrappedData = proto.SelfieImage.fromBuffer(decryptedData);
        selfie = Selfie(
          value: wrappedData.value,
          id: id,
          status: status,
        );
      case V1DataType.dataTypeUnspecified:
      case V1DataType.$unknown:
    }
  }

  final customValidationData = {
    for (final data in response.customValidationData)
      data.id: CustomValidationResult(
        id: data.id,
        type: data.type,
        value: data.encryptedValue,
      ),
  };

  return UserData(
    email: email,
    phone: phone,
    name: name,
    birthDate: birthDate,
    document: document,
    bankInfo: bankInfo,
    selfie: selfie,
    custom: customValidationData,
  );
}

Order processOrderData({
  required V1GetOrderResponse order,
  required String secretKey,
}) {
  String bankName = order.bankName;
  String bankAccount = order.bankAccount;

  if (bankName.isNotEmpty) {
    bankName = decryptOnly(
      encryptedData: bankName,
      secretKey: secretKey,
    );
  }

  if (bankAccount.isNotEmpty) {
    bankAccount = decryptOnly(
      encryptedData: bankAccount,
      secretKey: secretKey,
    );
  }

  if (order.userSignature.isNotEmpty) {
    final verifyKey =
        VerifyKey(Uint8List.fromList(base58.decode(order.userPublicKey)));
    final userMessage = order.type == 'ON_RAMP'
        ? createUserOnRampMessage(
            cryptoAmount: order.cryptoAmount,
            cryptoCurrency: order.cryptoCurrency,
            fiatAmount: order.fiatAmount,
            fiatCurrency: order.fiatCurrency,
          )
        : createUserOffRampMessage(
            cryptoAmount: order.cryptoAmount,
            cryptoCurrency: order.cryptoCurrency,
            fiatAmount: order.fiatAmount,
            fiatCurrency: order.fiatCurrency,
            bankName: bankName,
            bankAccount: bankAccount,
          );

    if (!verifyKey.verify(
      signature: Signature(base58.decode(order.userSignature)),
      message: Uint8List.fromList(utf8.encode(userMessage)),
    )) {
      throw Exception('Invalid user signature');
    }
  }

  if (order.partnerSignature.isNotEmpty) {
    final verifyKey =
        VerifyKey(Uint8List.fromList(base58.decode(order.partnerPublicKey)));
    final partnerMessage = order.type == 'ON_RAMP'
        ? createPartnerOnRampMessage(
            cryptoAmount: order.cryptoAmount,
            cryptoCurrency: order.cryptoCurrency,
            fiatAmount: order.fiatAmount,
            fiatCurrency: order.fiatCurrency,
            bankName: bankName,
            bankAccount: bankAccount,
          )
        : createPartnerOffRampMessage(
            cryptoAmount: order.cryptoAmount,
            cryptoCurrency: order.cryptoCurrency,
            fiatAmount: order.fiatAmount,
            fiatCurrency: order.fiatCurrency,
            cryptoWalletAddress: order.cryptoWalletAddress,
          );

    if (!verifyKey.verify(
      signature: Signature(base58.decode(order.partnerSignature)),
      message: Uint8List.fromList(utf8.encode(partnerMessage)),
    )) {
      throw Exception('Invalid partner signature');
    }
  }

  return Order.fromV1GetOrderResponse(
    order.copyWith(
      bankName: bankName,
      bankAccount: bankAccount,
    ),
  );
}

String createUserOnRampMessage({
  required String cryptoAmount,
  required String cryptoCurrency,
  required String fiatAmount,
  required String fiatCurrency,
}) =>
    '$cryptoAmount|$cryptoCurrency|$fiatAmount|$fiatCurrency';

String createUserOffRampMessage({
  required String cryptoAmount,
  required String cryptoCurrency,
  required String fiatAmount,
  required String fiatCurrency,
  required String bankName,
  required String bankAccount,
}) =>
    '$cryptoAmount|$cryptoCurrency|$fiatAmount|$fiatCurrency|$bankName|$bankAccount';

String createPartnerOnRampMessage({
  required String cryptoAmount,
  required String cryptoCurrency,
  required String fiatAmount,
  required String fiatCurrency,
  required String bankName,
  required String bankAccount,
}) =>
    '$cryptoAmount|$cryptoCurrency|$fiatAmount|$fiatCurrency|$bankName|$bankAccount';

String createPartnerOffRampMessage({
  required String cryptoAmount,
  required String cryptoCurrency,
  required String fiatAmount,
  required String fiatCurrency,
  required String cryptoWalletAddress,
}) =>
    '$cryptoAmount|$cryptoCurrency|$fiatAmount|$fiatCurrency|$cryptoWalletAddress';

const bool _isWeb = identical(0, 0.0);
const _encryptionAsyncThreshold = 1024 * 1024; // 1MB
