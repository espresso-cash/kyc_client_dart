// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_validation_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1ValidationDataImpl _$$V1ValidationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$V1ValidationDataImpl(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      kycSmileId: json['kycSmileId'] as String?,
    );

Map<String, dynamic> _$$V1ValidationDataImplToJson(
        _$V1ValidationDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'kycSmileId': instance.kycSmileId,
    };
