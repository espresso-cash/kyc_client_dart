// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_create_on_ramp_order_response.freezed.dart';
part 'v1_create_on_ramp_order_response.g.dart';

@Freezed()
class V1CreateOnRampOrderResponse with _$V1CreateOnRampOrderResponse {
  const factory V1CreateOnRampOrderResponse({
    required String orderId,
  }) = _V1CreateOnRampOrderResponse;
  
  factory V1CreateOnRampOrderResponse.fromJson(Map<String, Object?> json) => _$V1CreateOnRampOrderResponseFromJson(json);
}
