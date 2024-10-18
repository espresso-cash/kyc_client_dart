import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/src/models/id_type.dart';
import 'package:kyc_client_dart/src/models/validation_status.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    List<Email>? email,
    List<Phone>? phone,
    List<Name>? name,
    List<BirthDate>? birthDate,
    List<Document>? document,
    List<BankInfo>? bankInfo,
    List<Selfie>? selfie,
    Map<String, dynamic>? custom,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class Email with _$Email {
  const factory Email({
    required String value,
    @Default('') String id,
    required ValidationStatus status,
  }) = _Email;

  factory Email.fromJson(Map<String, dynamic> json) => _$EmailFromJson(json);
}

@freezed
class Phone with _$Phone {
  const factory Phone({
    required String value,
    @Default('') String id,
    required ValidationStatus status,
  }) = _Phone;

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
}

@freezed
class Selfie with _$Selfie {
  const factory Selfie({
    required List<int> value,
    @Default('') String id,
    required ValidationStatus status,
  }) = _Selfie;

  factory Selfie.fromJson(Map<String, dynamic> json) => _$SelfieFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    required String firstName,
    required String lastName,
    @Default('') String id,
    required ValidationStatus status,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class BirthDate with _$BirthDate {
  const factory BirthDate({
    required DateTime value,
    @Default('') String id,
    required ValidationStatus status,
  }) = _BirthDate;

  factory BirthDate.fromJson(Map<String, dynamic> json) =>
      _$BirthDateFromJson(json);
}

@freezed
class Document with _$Document {
  const factory Document({
    required IdType type,
    required String number,
    required String countryCode,
    @Default('') String id,
    required ValidationStatus status,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}

@freezed
class BankInfo with _$BankInfo {
  const factory BankInfo({
    required String bankName,
    required String bankCode,
    required String accountNumber,
    @Default('') String id,
    required ValidationStatus? status,
  }) = _BankInfo;

  factory BankInfo.fromJson(Map<String, dynamic> json) =>
      _$BankInfoFromJson(json);
}
