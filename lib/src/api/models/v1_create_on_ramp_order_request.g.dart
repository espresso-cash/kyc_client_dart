// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_create_on_ramp_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1CreateOnRampOrderRequestImpl _$$V1CreateOnRampOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1CreateOnRampOrderRequestImpl(
      partnerPublicKey: json['partnerPublicKey'] as String,
      cryptoAmount: json['cryptoAmount'] as String,
      cryptoCurrency: json['cryptoCurrency'] as String,
    );

Map<String, dynamic> _$$V1CreateOnRampOrderRequestImplToJson(
        _$V1CreateOnRampOrderRequestImpl instance) =>
    <String, dynamic>{
      'partnerPublicKey': instance.partnerPublicKey,
      'cryptoAmount': instance.cryptoAmount,
      'cryptoCurrency': instance.cryptoCurrency,
    };
