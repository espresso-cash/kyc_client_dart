// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ValidationResultImpl _$$ValidationResultImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationResultImpl(
      dataId: json['dataId'] as String,
      type: $enumDecode(_$ValidationTypeEnumMap, json['type']),
      value: json['value'] as String,
    );

Map<String, dynamic> _$$ValidationResultImplToJson(
        _$ValidationResultImpl instance) =>
    <String, dynamic>{
      'dataId': instance.dataId,
      'type': _$ValidationTypeEnumMap[instance.type]!,
      'value': instance.value,
    };

const _$ValidationTypeEnumMap = {
  ValidationType.email: 'email',
  ValidationType.phone: 'phone',
  ValidationType.custom: 'custom',
};
