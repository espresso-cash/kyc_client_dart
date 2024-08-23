// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_user_data.dart';

part 'v1_set_data_request.freezed.dart';
part 'v1_set_data_request.g.dart';

@Freezed()
class V1SetDataRequest with _$V1SetDataRequest {
  const factory V1SetDataRequest({
    required V1UserData data,
  }) = _V1SetDataRequest;
  
  factory V1SetDataRequest.fromJson(Map<String, Object?> json) => _$V1SetDataRequestFromJson(json);
}
