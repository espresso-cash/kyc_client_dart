// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_validation_result_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1GetValidationResultRequestImpl _$$V1GetValidationResultRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1GetValidationResultRequestImpl(
      userPublicKey: json['userPublicKey'] as String,
      validatorPublicKey: json['validatorPublicKey'] as String,
    );

Map<String, dynamic> _$$V1GetValidationResultRequestImplToJson(
        _$V1GetValidationResultRequestImpl instance) =>
    <String, dynamic>{
      'userPublicKey': instance.userPublicKey,
      'validatorPublicKey': instance.validatorPublicKey,
    };
