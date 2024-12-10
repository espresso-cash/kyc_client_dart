// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_get_user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1GetUserDataResponseImpl _$$V1GetUserDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$V1GetUserDataResponseImpl(
      userData: (json['userData'] as List<dynamic>)
          .map((e) => V1UserDataField.fromJson(e as Map<String, dynamic>))
          .toList(),
      validationData: (json['validationData'] as List<dynamic>)
          .map((e) => V1ValidationDataField.fromJson(e as Map<String, dynamic>))
          .toList(),
      customValidationData: (json['customValidationData'] as List<dynamic>)
          .map((e) =>
              V1CustomValidationDataField.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$V1GetUserDataResponseImplToJson(
        _$V1GetUserDataResponseImpl instance) =>
    <String, dynamic>{
      'userData': instance.userData,
      'validationData': instance.validationData,
      'customValidationData': instance.customValidationData,
    };
