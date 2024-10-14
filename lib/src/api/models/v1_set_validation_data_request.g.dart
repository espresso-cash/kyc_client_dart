// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_set_validation_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1SetValidationDataRequestImpl _$$V1SetValidationDataRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1SetValidationDataRequestImpl(
      userPublicKey: json['userPublicKey'] as String,
      encryptedData: json['encryptedData'] as String,
      dataId: json['dataId'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$V1SetValidationDataRequestImplToJson(
        _$V1SetValidationDataRequestImpl instance) =>
    <String, dynamic>{
      'userPublicKey': instance.userPublicKey,
      'encryptedData': instance.encryptedData,
      'dataId': instance.dataId,
      'id': instance.id,
    };
