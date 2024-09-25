// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_reject_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1RejectOrderRequestImpl _$$V1RejectOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1RejectOrderRequestImpl(
      orderId: json['orderId'] as String,
      reason: json['reason'] as String,
    );

Map<String, dynamic> _$$V1RejectOrderRequestImplToJson(
        _$V1RejectOrderRequestImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'reason': instance.reason,
    };
