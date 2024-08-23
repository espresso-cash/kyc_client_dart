// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_user_data.freezed.dart';
part 'v1_user_data.g.dart';

@Freezed()
class V1UserData with _$V1UserData {
  const factory V1UserData({
    required String email,
    required String phone,
    required String firstName,
    required String middleName,
    required String lastName,
    required String dob,
    required String countryCode,
    required String idType,
    required String idNumber,
    required String photoIdCard,
    required String photoSelfie,
  }) = _V1UserData;
  
  factory V1UserData.fromJson(Map<String, Object?> json) => _$V1UserDataFromJson(json);
}
