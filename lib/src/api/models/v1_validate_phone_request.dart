// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_validate_phone_request.freezed.dart';
part 'v1_validate_phone_request.g.dart';

@Freezed()
class V1ValidatePhoneRequest with _$V1ValidatePhoneRequest {
  const factory V1ValidatePhoneRequest({
    required String code,
    required String dataId,
  }) = _V1ValidatePhoneRequest;
  
  factory V1ValidatePhoneRequest.fromJson(Map<String, Object?> json) => _$V1ValidatePhoneRequestFromJson(json);
}
