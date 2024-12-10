// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_custom_validation_data_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1CustomValidationDataFieldImpl _$$V1CustomValidationDataFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$V1CustomValidationDataFieldImpl(
      id: json['id'] as String,
      validatorPublicKey: json['validatorPublicKey'] as String,
      type: json['type'] as String,
      encryptedValue: json['encryptedValue'] as String,
      hash: json['hash'] as String,
      signature: json['signature'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$V1CustomValidationDataFieldImplToJson(
        _$V1CustomValidationDataFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'validatorPublicKey': instance.validatorPublicKey,
      'type': instance.type,
      'encryptedValue': instance.encryptedValue,
      'hash': instance.hash,
      'signature': instance.signature,
      'createdAt': instance.createdAt.toIso8601String(),
    };
