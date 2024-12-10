// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_data_type.dart';

part 'v1_set_user_data_request.freezed.dart';
part 'v1_set_user_data_request.g.dart';

@Freezed()
class V1SetUserDataRequest with _$V1SetUserDataRequest {
  const factory V1SetUserDataRequest({
    required V1DataType type,
    required String encryptedValue,
    required String hash,
    required String signature,
  }) = _V1SetUserDataRequest;
  
  factory V1SetUserDataRequest.fromJson(Map<String, Object?> json) => _$V1SetUserDataRequestFromJson(json);
}
