// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_get_info_response.freezed.dart';
part 'v1_get_info_response.g.dart';

@Freezed()
class V1GetInfoResponse with _$V1GetInfoResponse {
  const factory V1GetInfoResponse({
    required String encryptedSecretKey,
    required String message,
    required String publicKey,
    required String walletAddress,
  }) = _V1GetInfoResponse;
  
  factory V1GetInfoResponse.fromJson(Map<String, Object?> json) => _$V1GetInfoResponseFromJson(json);
}
