// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_create_off_ramp_order_request.freezed.dart';
part 'v1_create_off_ramp_order_request.g.dart';

@Freezed()
class V1CreateOffRampOrderRequest with _$V1CreateOffRampOrderRequest {
  const factory V1CreateOffRampOrderRequest({
    required String partnerPublicKey,
    required String cryptoAmount,
    required String cryptoCurrency,
    required String fiatAmount,
    required String fiatCurrency,
    required String bankName,
    required String bankAccount,
  }) = _V1CreateOffRampOrderRequest;
  
  factory V1CreateOffRampOrderRequest.fromJson(Map<String, Object?> json) => _$V1CreateOffRampOrderRequestFromJson(json);
}
