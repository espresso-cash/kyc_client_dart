// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_get_partner_info_response.dart';

part 'v1_get_granted_access_partners_response.freezed.dart';
part 'v1_get_granted_access_partners_response.g.dart';

@Freezed()
class V1GetGrantedAccessPartnersResponse with _$V1GetGrantedAccessPartnersResponse {
  const factory V1GetGrantedAccessPartnersResponse({
    required List<V1GetPartnerInfoResponse> partners,
  }) = _V1GetGrantedAccessPartnersResponse;
  
  factory V1GetGrantedAccessPartnersResponse.fromJson(Map<String, Object?> json) => _$V1GetGrantedAccessPartnersResponseFromJson(json);
}
