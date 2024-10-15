import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/src/models/id_type.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    List<Email>? email,
    List<Phone>? phone,
    List<Name>? name,
    List<BirthDate>? birthDate,
    List<Document>? document,
    List<BankInfo>? bankInfo,
    List<Selfie>? selfie,
    Map<String, dynamic>? custom,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
class Email with _$Email {
  const factory Email({
    required String value,
    required bool verified,
    required String dataId,
  }) = _Email;

  factory Email.fromJson(Map<String, dynamic> json) => _$EmailFromJson(json);
}

@freezed
class Phone with _$Phone {
  const factory Phone({
    required String value,
    required bool verified,
    required String dataId,
  }) = _Phone;

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
}

@freezed
class Selfie with _$Selfie {
  const factory Selfie({
    required List<int> value,
    required bool verified,
    required String dataId,
  }) = _Selfie;

  factory Selfie.fromJson(Map<String, dynamic> json) => _$SelfieFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    required String firstName,
    required String lastName,
    required bool verified,
    required String dataId,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class BirthDate with _$BirthDate {
  const factory BirthDate({
    required DateTime value,
    required bool verified,
    required String dataId,
  }) = _BirthDate;

  factory BirthDate.fromJson(Map<String, dynamic> json) =>
      _$BirthDateFromJson(json);
}

@freezed
class Document with _$Document {
  const factory Document({
    required IdType type,
    required String number,
    required bool verified,
    required String dataId,
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
    required bool verified,
    required String dataId,
  }) = _BankInfo;

  factory BankInfo.fromJson(Map<String, dynamic> json) =>
      _$BankInfoFromJson(json);
}
