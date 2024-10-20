// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_init_email_validation_request.freezed.dart';
part 'v1_init_email_validation_request.g.dart';

@Freezed()
class V1InitEmailValidationRequest with _$V1InitEmailValidationRequest {
  const factory V1InitEmailValidationRequest({
    required String dataId,
  }) = _V1InitEmailValidationRequest;
  
  factory V1InitEmailValidationRequest.fromJson(Map<String, Object?> json) => _$V1InitEmailValidationRequestFromJson(json);
}
