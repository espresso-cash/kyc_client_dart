// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_get_partner_info_response.freezed.dart';
part 'v1_get_partner_info_response.g.dart';

@Freezed()
class V1GetPartnerInfoResponse with _$V1GetPartnerInfoResponse {
  const factory V1GetPartnerInfoResponse({
    required String name,
    required String publicKey,
  }) = _V1GetPartnerInfoResponse;
  
  factory V1GetPartnerInfoResponse.fromJson(Map<String, Object?> json) => _$V1GetPartnerInfoResponseFromJson(json);
}
