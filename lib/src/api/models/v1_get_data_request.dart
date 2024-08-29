// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_get_data_request.freezed.dart';
part 'v1_get_data_request.g.dart';

@Freezed()
class V1GetDataRequest with _$V1GetDataRequest {
  const factory V1GetDataRequest({
    required String publicKey,
  }) = _V1GetDataRequest;
  
  factory V1GetDataRequest.fromJson(Map<String, Object?> json) => _$V1GetDataRequestFromJson(json);
}
