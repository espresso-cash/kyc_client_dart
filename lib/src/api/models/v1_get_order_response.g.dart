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
      type: json['type'] as String,
      cryptoAmount: json['cryptoAmount'] as String,
      cryptoCurrency: json['cryptoCurrency'] as String,
      fiatAmount: json['fiatAmount'] as String,
      fiatCurrency: json['fiatCurrency'] as String,
      bankName: json['bankName'] as String,
      bankAccount: json['bankAccount'] as String,
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
      'type': instance.type,
      'cryptoAmount': instance.cryptoAmount,
      'cryptoCurrency': instance.cryptoCurrency,
      'fiatAmount': instance.fiatAmount,
      'fiatCurrency': instance.fiatCurrency,
      'bankName': instance.bankName,
      'bankAccount': instance.bankAccount,
    };
