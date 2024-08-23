// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_get_validation_result_request.freezed.dart';
part 'v1_get_validation_result_request.g.dart';

@Freezed()
class V1GetValidationResultRequest with _$V1GetValidationResultRequest {
  const factory V1GetValidationResultRequest({
    required String publicKey,
  }) = _V1GetValidationResultRequest;
  
  factory V1GetValidationResultRequest.fromJson(Map<String, Object?> json) => _$V1GetValidationResultRequestFromJson(json);
}
