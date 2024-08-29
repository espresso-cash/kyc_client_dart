// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_validation_data.dart';

part 'v1_set_validation_result_request.freezed.dart';
part 'v1_set_validation_result_request.g.dart';

@Freezed()
class V1SetValidationResultRequest with _$V1SetValidationResultRequest {
  const factory V1SetValidationResultRequest({
    required String userPublicKey,
    required V1ValidationData data,
  }) = _V1SetValidationResultRequest;
  
  factory V1SetValidationResultRequest.fromJson(Map<String, Object?> json) => _$V1SetValidationResultRequestFromJson(json);
}
