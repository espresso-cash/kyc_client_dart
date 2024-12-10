// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_validation_status.dart';

part 'v1_validation_data_field.freezed.dart';
part 'v1_validation_data_field.g.dart';

@Freezed()
class V1ValidationDataField with _$V1ValidationDataField {
  const factory V1ValidationDataField({
    required String id,
    required String validatorPublicKey,
    required String dataId,
    required V1ValidationStatus status,
    required String hash,
    required String signature,
    required DateTime validatedAt,
  }) = _V1ValidationDataField;
  
  factory V1ValidationDataField.fromJson(Map<String, Object?> json) => _$V1ValidationDataFieldFromJson(json);
}
