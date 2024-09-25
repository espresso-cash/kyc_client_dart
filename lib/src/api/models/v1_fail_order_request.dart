// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_fail_order_request.freezed.dart';
part 'v1_fail_order_request.g.dart';

@Freezed()
class V1FailOrderRequest with _$V1FailOrderRequest {
  const factory V1FailOrderRequest({
    required String orderId,
    required String reason,
  }) = _V1FailOrderRequest;
  
  factory V1FailOrderRequest.fromJson(Map<String, Object?> json) => _$V1FailOrderRequestFromJson(json);
}
