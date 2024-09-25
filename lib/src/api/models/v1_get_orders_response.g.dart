// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1GetOrdersResponseImpl _$$V1GetOrdersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$V1GetOrdersResponseImpl(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => V1GetOrderResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$V1GetOrdersResponseImplToJson(
        _$V1GetOrdersResponseImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
