// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_fail_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1FailOrderRequestImpl _$$V1FailOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1FailOrderRequestImpl(
      orderId: json['orderId'] as String,
      reason: json['reason'] as String,
      externalId: json['externalId'] as String,
    );

Map<String, dynamic> _$$V1FailOrderRequestImplToJson(
        _$V1FailOrderRequestImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'reason': instance.reason,
      'externalId': instance.externalId,
    };
