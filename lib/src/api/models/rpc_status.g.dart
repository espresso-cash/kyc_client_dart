// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rpc_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RpcStatusImpl _$$RpcStatusImplFromJson(Map<String, dynamic> json) =>
    _$RpcStatusImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      details: (json['details'] as List<dynamic>)
          .map((e) => ProtobufAny.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RpcStatusImplToJson(_$RpcStatusImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'details': instance.details,
    };
