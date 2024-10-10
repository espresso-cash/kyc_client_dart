// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_complete_order_request.freezed.dart';
part 'v1_complete_order_request.g.dart';

@Freezed()
class V1CompleteOrderRequest with _$V1CompleteOrderRequest {
  const factory V1CompleteOrderRequest({
    String? orderId,
    String? transactionId,
    String? externalId,
  }) = _V1CompleteOrderRequest;
  
  factory V1CompleteOrderRequest.fromJson(Map<String, Object?> json) => _$V1CompleteOrderRequestFromJson(json);
}
