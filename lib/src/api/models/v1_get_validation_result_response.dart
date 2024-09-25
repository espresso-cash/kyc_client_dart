// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_validation_data.dart';

part 'v1_get_validation_result_response.freezed.dart';
part 'v1_get_validation_result_response.g.dart';

@Freezed()
class V1GetValidationResultResponse with _$V1GetValidationResultResponse {
  const factory V1GetValidationResultResponse({
    required V1ValidationData data,
  }) = _V1GetValidationResultResponse;
  
  factory V1GetValidationResultResponse.fromJson(Map<String, Object?> json) => _$V1GetValidationResultResponseFromJson(json);
}
