// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_validation_status.dart';

part 'v1_set_validation_data_request.freezed.dart';
part 'v1_set_validation_data_request.g.dart';

@Freezed()
class V1SetValidationDataRequest with _$V1SetValidationDataRequest {
  const factory V1SetValidationDataRequest({
    required String dataId,
    required V1ValidationStatus status,
    required String hash,
    required String signature,
  }) = _V1SetValidationDataRequest;
  
  factory V1SetValidationDataRequest.fromJson(Map<String, Object?> json) => _$V1SetValidationDataRequestFromJson(json);
}
