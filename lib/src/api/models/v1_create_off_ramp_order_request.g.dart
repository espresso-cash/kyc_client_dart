// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_create_off_ramp_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1CreateOffRampOrderRequestImpl _$$V1CreateOffRampOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1CreateOffRampOrderRequestImpl(
      partnerPublicKey: json['partnerPublicKey'] as String,
      cryptoAmount: json['cryptoAmount'] as String,
      cryptoCurrency: json['cryptoCurrency'] as String,
      fiatAmount: json['fiatAmount'] as String,
      fiatCurrency: json['fiatCurrency'] as String,
      bankName: json['bankName'] as String,
      bankAccount: json['bankAccount'] as String,
    );

Map<String, dynamic> _$$V1CreateOffRampOrderRequestImplToJson(
        _$V1CreateOffRampOrderRequestImpl instance) =>
    <String, dynamic>{
      'partnerPublicKey': instance.partnerPublicKey,
      'cryptoAmount': instance.cryptoAmount,
      'cryptoCurrency': instance.cryptoCurrency,
      'fiatAmount': instance.fiatAmount,
      'fiatCurrency': instance.fiatCurrency,
      'bankName': instance.bankName,
      'bankAccount': instance.bankAccount,
    };
