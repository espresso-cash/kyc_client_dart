// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_user_data.dart';

part 'v1_get_data_response.freezed.dart';
part 'v1_get_data_response.g.dart';

@Freezed()
class V1GetDataResponse with _$V1GetDataResponse {
  const factory V1GetDataResponse({
    required V1UserData data,
  }) = _V1GetDataResponse;
  
  factory V1GetDataResponse.fromJson(Map<String, Object?> json) => _$V1GetDataResponseFromJson(json);
}
