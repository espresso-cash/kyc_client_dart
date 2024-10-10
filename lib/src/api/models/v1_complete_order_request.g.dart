// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_complete_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1CompleteOrderRequestImpl _$$V1CompleteOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1CompleteOrderRequestImpl(
      orderId: json['orderId'] as String?,
      transactionId: json['transactionId'] as String?,
      externalId: json['externalId'] as String?,
    );

Map<String, dynamic> _$$V1CompleteOrderRequestImplToJson(
        _$V1CompleteOrderRequestImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'transactionId': instance.transactionId,
      'externalId': instance.externalId,
    };
