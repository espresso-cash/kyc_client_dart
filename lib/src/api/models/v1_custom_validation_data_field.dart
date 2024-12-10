// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_custom_validation_data_field.freezed.dart';
part 'v1_custom_validation_data_field.g.dart';

@Freezed()
class V1CustomValidationDataField with _$V1CustomValidationDataField {
  const factory V1CustomValidationDataField({
    required String id,
    required String validatorPublicKey,
    required String type,
    required String encryptedValue,
    required String hash,
    required String signature,
    required DateTime createdAt,
  }) = _V1CustomValidationDataField;
  
  factory V1CustomValidationDataField.fromJson(Map<String, Object?> json) => _$V1CustomValidationDataFieldFromJson(json);
}
