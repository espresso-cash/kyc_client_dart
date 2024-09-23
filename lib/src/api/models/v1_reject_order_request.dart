// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_reject_order_request.freezed.dart';
part 'v1_reject_order_request.g.dart';

@Freezed()
class V1RejectOrderRequest with _$V1RejectOrderRequest {
  const factory V1RejectOrderRequest({
    required String orderId,
    required String reason,
  }) = _V1RejectOrderRequest;
  
  factory V1RejectOrderRequest.fromJson(Map<String, Object?> json) => _$V1RejectOrderRequestFromJson(json);
}
