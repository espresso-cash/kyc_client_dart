// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1GetInfoResponseImpl _$$V1GetInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$V1GetInfoResponseImpl(
      encryptedSecretKey: json['encryptedSecretKey'] as String,
      message: json['message'] as String,
      publicKey: json['publicKey'] as String,
      walletAddress: json['walletAddress'] as String,
    );

Map<String, dynamic> _$$V1GetInfoResponseImplToJson(
        _$V1GetInfoResponseImpl instance) =>
    <String, dynamic>{
      'encryptedSecretKey': instance.encryptedSecretKey,
      'message': instance.message,
      'publicKey': instance.publicKey,
      'walletAddress': instance.walletAddress,
    };
