// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_accept_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1AcceptOrderRequestImpl _$$V1AcceptOrderRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1AcceptOrderRequestImpl(
      orderId: json['orderId'] as String,
      bankName: json['bankName'] as String,
      bankAccount: json['bankAccount'] as String,
      cryptoWalletAddress: json['cryptoWalletAddress'] as String,
      externalId: json['externalId'] as String,
    );

Map<String, dynamic> _$$V1AcceptOrderRequestImplToJson(
        _$V1AcceptOrderRequestImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'bankName': instance.bankName,
      'bankAccount': instance.bankAccount,
      'cryptoWalletAddress': instance.cryptoWalletAddress,
      'externalId': instance.externalId,
    };
