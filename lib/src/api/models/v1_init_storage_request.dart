// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_init_storage_request.freezed.dart';
part 'v1_init_storage_request.g.dart';

@Freezed()
class V1InitStorageRequest with _$V1InitStorageRequest {
  const factory V1InitStorageRequest({
    required String walletAddress,
    required String message,
    required String encryptedSecretKey,
    required String walletProofSignature,
    required String walletProofMessage,
  }) = _V1InitStorageRequest;
  
  factory V1InitStorageRequest.fromJson(Map<String, Object?> json) => _$V1InitStorageRequestFromJson(json);
}
