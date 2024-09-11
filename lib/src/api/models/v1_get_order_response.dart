// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'v1_on_ramp_data.dart';

part 'v1_get_order_response.freezed.dart';
part 'v1_get_order_response.g.dart';

@Freezed()
class V1GetOrderResponse with _$V1GetOrderResponse {
  const factory V1GetOrderResponse({
    required String orderId,
    required String status,
    required String partnerPublicKey,
    required V1OnRampData onRamp,
  }) = _V1GetOrderResponse;
  
  factory V1GetOrderResponse.fromJson(Map<String, Object?> json) => _$V1GetOrderResponseFromJson(json);
}
