// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_data_type.dart';

part 'v1_user_data_field.freezed.dart';
part 'v1_user_data_field.g.dart';

@Freezed()
class V1UserDataField with _$V1UserDataField {
  const factory V1UserDataField({
    required String id,
    required V1DataType type,
    required String encryptedValue,
    required String hash,
    required String signature,
    required DateTime createdAt,
  }) = _V1UserDataField;
  
  factory V1UserDataField.fromJson(Map<String, Object?> json) => _$V1UserDataFieldFromJson(json);
}
