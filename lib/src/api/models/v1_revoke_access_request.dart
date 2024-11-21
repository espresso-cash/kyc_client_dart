// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_revoke_access_request.freezed.dart';
part 'v1_revoke_access_request.g.dart';

@Freezed()
class V1RevokeAccessRequest with _$V1RevokeAccessRequest {
  const factory V1RevokeAccessRequest({
    required String validatorPublicKey,
  }) = _V1RevokeAccessRequest;
  
  factory V1RevokeAccessRequest.fromJson(Map<String, Object?> json) => _$V1RevokeAccessRequestFromJson(json);
}
