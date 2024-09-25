// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_partner_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1GetPartnerOrdersResponseImpl _$$V1GetPartnerOrdersResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$V1GetPartnerOrdersResponseImpl(
      orders: (json['orders'] as List<dynamic>)
          .map((e) => V1GetOrderResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$V1GetPartnerOrdersResponseImplToJson(
        _$V1GetPartnerOrdersResponseImpl instance) =>
    <String, dynamic>{
      'orders': instance.orders,
    };
