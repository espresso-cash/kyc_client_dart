// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_user_data.freezed.dart';
part 'v1_user_data.g.dart';

@Freezed()
class V1UserData with _$V1UserData {
  const factory V1UserData({
    String? email,
    String? phone,
    String? firstName,
    String? middleName,
    String? lastName,
    String? dob,
    String? countryCode,
    String? idType,
    String? idNumber,
    String? photoIdCard,
    String? photoSelfie,
    String? bankAccountNumber,
    String? bankCode,
  }) = _V1UserData;
  
  factory V1UserData.fromJson(Map<String, Object?> json) => _$V1UserDataFromJson(json);
}
