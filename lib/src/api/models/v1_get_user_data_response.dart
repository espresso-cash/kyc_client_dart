// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_custom_validation_data_field.dart';
import 'v1_user_data_field.dart';
import 'v1_validation_data_field.dart';

part 'v1_get_user_data_response.freezed.dart';
part 'v1_get_user_data_response.g.dart';

@Freezed()
class V1GetUserDataResponse with _$V1GetUserDataResponse {
  const factory V1GetUserDataResponse({
    required List<V1UserDataField> userData,
    required List<V1ValidationDataField> validationData,
    required List<V1CustomValidationDataField> customValidationData,
  }) = _V1GetUserDataResponse;
  
  factory V1GetUserDataResponse.fromJson(Map<String, Object?> json) => _$V1GetUserDataResponseFromJson(json);
}
