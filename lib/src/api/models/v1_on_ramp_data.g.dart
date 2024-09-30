// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_on_ramp_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1OnRampDataImpl _$$V1OnRampDataImplFromJson(Map<String, dynamic> json) =>
    _$V1OnRampDataImpl(
      cryptoAmount: json['cryptoAmount'] as String,
      cryptoCurrency: json['cryptoCurrency'] as String,
      fiatAmount: json['fiatAmount'] as String,
      fiatCurrency: json['fiatCurrency'] as String,
      bankName: json['bankName'] as String,
      bankAccount: json['bankAccount'] as String,
    );

Map<String, dynamic> _$$V1OnRampDataImplToJson(_$V1OnRampDataImpl instance) =>
    <String, dynamic>{
      'cryptoAmount': instance.cryptoAmount,
      'cryptoCurrency': instance.cryptoCurrency,
      'fiatAmount': instance.fiatAmount,
      'fiatCurrency': instance.fiatCurrency,
      'bankName': instance.bankName,
      'bankAccount': instance.bankAccount,
    };
