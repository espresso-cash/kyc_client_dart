// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_get_user_data_request.freezed.dart';
part 'v1_get_user_data_request.g.dart';

@Freezed()
class V1GetUserDataRequest with _$V1GetUserDataRequest {
  const factory V1GetUserDataRequest({
    required String userPublicKey,
    required bool includeValues,
  }) = _V1GetUserDataRequest;
  
  factory V1GetUserDataRequest.fromJson(Map<String, Object?> json) => _$V1GetUserDataRequestFromJson(json);
}
