// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_get_info_request.freezed.dart';
part 'v1_get_info_request.g.dart';

@Freezed()
class V1GetInfoRequest with _$V1GetInfoRequest {
  const factory V1GetInfoRequest({
    required String publicKey,
  }) = _V1GetInfoRequest;
  
  factory V1GetInfoRequest.fromJson(Map<String, Object?> json) => _$V1GetInfoRequestFromJson(json);
}
