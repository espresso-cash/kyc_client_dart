// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_accept_order_request.freezed.dart';
part 'v1_accept_order_request.g.dart';

@Freezed()
class V1AcceptOrderRequest with _$V1AcceptOrderRequest {
  const factory V1AcceptOrderRequest({
    required String orderId,
  }) = _V1AcceptOrderRequest;
  
  factory V1AcceptOrderRequest.fromJson(Map<String, Object?> json) => _$V1AcceptOrderRequestFromJson(json);
}
