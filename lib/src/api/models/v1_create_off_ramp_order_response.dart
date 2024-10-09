// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_create_off_ramp_order_response.freezed.dart';
part 'v1_create_off_ramp_order_response.g.dart';

@Freezed()
class V1CreateOffRampOrderResponse with _$V1CreateOffRampOrderResponse {
  const factory V1CreateOffRampOrderResponse({
    required String orderId,
  }) = _V1CreateOffRampOrderResponse;
  
  factory V1CreateOffRampOrderResponse.fromJson(Map<String, Object?> json) => _$V1CreateOffRampOrderResponseFromJson(json);
}
