// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_get_order_response.dart';

part 'v1_get_orders_response.freezed.dart';
part 'v1_get_orders_response.g.dart';

@Freezed()
class V1GetOrdersResponse with _$V1GetOrdersResponse {
  const factory V1GetOrdersResponse({
    required List<V1GetOrderResponse> orders,
  }) = _V1GetOrdersResponse;
  
  factory V1GetOrdersResponse.fromJson(Map<String, Object?> json) => _$V1GetOrdersResponseFromJson(json);
}
