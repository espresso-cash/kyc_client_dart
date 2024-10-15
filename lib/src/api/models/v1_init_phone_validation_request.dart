// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_init_phone_validation_request.freezed.dart';
part 'v1_init_phone_validation_request.g.dart';

@Freezed()
class V1InitPhoneValidationRequest with _$V1InitPhoneValidationRequest {
  const factory V1InitPhoneValidationRequest({
    required String dataId,
  }) = _V1InitPhoneValidationRequest;
  
  factory V1InitPhoneValidationRequest.fromJson(Map<String, Object?> json) => _$V1InitPhoneValidationRequestFromJson(json);
}
