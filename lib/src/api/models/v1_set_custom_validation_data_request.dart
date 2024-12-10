// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_set_custom_validation_data_request.freezed.dart';
part 'v1_set_custom_validation_data_request.g.dart';

@Freezed()
class V1SetCustomValidationDataRequest with _$V1SetCustomValidationDataRequest {
  const factory V1SetCustomValidationDataRequest({
    required String type,
    required String encryptedValue,
    required String hash,
    required String signature,
    required String userPublicKey,
  }) = _V1SetCustomValidationDataRequest;
  
  factory V1SetCustomValidationDataRequest.fromJson(Map<String, Object?> json) => _$V1SetCustomValidationDataRequestFromJson(json);
}
