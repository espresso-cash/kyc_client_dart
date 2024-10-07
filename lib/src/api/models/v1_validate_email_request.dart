// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_validate_email_request.freezed.dart';
part 'v1_validate_email_request.g.dart';

@Freezed()
class V1ValidateEmailRequest with _$V1ValidateEmailRequest {
  const factory V1ValidateEmailRequest({
    required String code,
  }) = _V1ValidateEmailRequest;
  
  factory V1ValidateEmailRequest.fromJson(Map<String, Object?> json) => _$V1ValidateEmailRequestFromJson(json);
}
