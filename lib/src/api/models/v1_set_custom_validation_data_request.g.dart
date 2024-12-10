// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_set_custom_validation_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1SetCustomValidationDataRequestImpl
    _$$V1SetCustomValidationDataRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$V1SetCustomValidationDataRequestImpl(
          type: json['type'] as String,
          encryptedValue: json['encryptedValue'] as String,
          hash: json['hash'] as String,
          signature: json['signature'] as String,
          userPublicKey: json['userPublicKey'] as String,
        );

Map<String, dynamic> _$$V1SetCustomValidationDataRequestImplToJson(
        _$V1SetCustomValidationDataRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'encryptedValue': instance.encryptedValue,
      'hash': instance.hash,
      'signature': instance.signature,
      'userPublicKey': instance.userPublicKey,
    };
