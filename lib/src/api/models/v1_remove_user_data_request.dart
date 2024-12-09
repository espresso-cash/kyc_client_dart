// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_remove_user_data_request.freezed.dart';
part 'v1_remove_user_data_request.g.dart';

@Freezed()
class V1RemoveUserDataRequest with _$V1RemoveUserDataRequest {
  const factory V1RemoveUserDataRequest({
    required String dataId,
  }) = _V1RemoveUserDataRequest;
  
  factory V1RemoveUserDataRequest.fromJson(Map<String, Object?> json) => _$V1RemoveUserDataRequestFromJson(json);
}
