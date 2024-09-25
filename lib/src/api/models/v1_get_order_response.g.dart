// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1GetOrderResponseImpl _$$V1GetOrderResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$V1GetOrderResponseImpl(
      orderId: json['orderId'] as String,
      created: json['created'] as String,
      status: json['status'] as String,
      partnerPublicKey: json['partnerPublicKey'] as String,
      userPublicKey: json['userPublicKey'] as String,
      comment: json['comment'] as String,
      onRamp: V1OnRampData.fromJson(json['onRamp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$V1GetOrderResponseImplToJson(
        _$V1GetOrderResponseImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'created': instance.created,
      'status': instance.status,
      'partnerPublicKey': instance.partnerPublicKey,
      'userPublicKey': instance.userPublicKey,
      'comment': instance.comment,
      'onRamp': instance.onRamp,
    };
