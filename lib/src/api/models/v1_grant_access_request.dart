// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_grant_access_request.freezed.dart';
part 'v1_grant_access_request.g.dart';

@Freezed()
class V1GrantAccessRequest with _$V1GrantAccessRequest {
  const factory V1GrantAccessRequest({
    required String validatorPublicKey,
    required String encryptedSecretKey,
  }) = _V1GrantAccessRequest;
  
  factory V1GrantAccessRequest.fromJson(Map<String, Object?> json) => _$V1GrantAccessRequestFromJson(json);
}
