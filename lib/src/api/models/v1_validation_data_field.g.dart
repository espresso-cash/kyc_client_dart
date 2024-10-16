// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_validation_data_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1ValidationDataFieldImpl _$$V1ValidationDataFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$V1ValidationDataFieldImpl(
      validatorPublicKey: json['validatorPublicKey'] as String,
      encryptedData: json['encryptedData'] as String,
      dataId: json['dataId'] as String,
    );

Map<String, dynamic> _$$V1ValidationDataFieldImplToJson(
        _$V1ValidationDataFieldImpl instance) =>
    <String, dynamic>{
      'validatorPublicKey': instance.validatorPublicKey,
      'encryptedData': instance.encryptedData,
      'dataId': instance.dataId,
    };
