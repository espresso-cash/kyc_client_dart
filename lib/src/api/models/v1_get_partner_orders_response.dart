// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_get_order_response.dart';

part 'v1_get_partner_orders_response.freezed.dart';
part 'v1_get_partner_orders_response.g.dart';

@Freezed()
class V1GetPartnerOrdersResponse with _$V1GetPartnerOrdersResponse {
  const factory V1GetPartnerOrdersResponse({
    required List<V1GetOrderResponse> orders,
  }) = _V1GetPartnerOrdersResponse;
  
  factory V1GetPartnerOrdersResponse.fromJson(Map<String, Object?> json) => _$V1GetPartnerOrdersResponseFromJson(json);
}
