// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_get_partner_info_request.freezed.dart';
part 'v1_get_partner_info_request.g.dart';

@Freezed()
class V1GetPartnerInfoRequest with _$V1GetPartnerInfoRequest {
  const factory V1GetPartnerInfoRequest({
    required String id,
  }) = _V1GetPartnerInfoRequest;
  
  factory V1GetPartnerInfoRequest.fromJson(Map<String, Object?> json) => _$V1GetPartnerInfoRequestFromJson(json);
}
