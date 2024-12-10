// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_set_user_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1SetUserDataRequestImpl _$$V1SetUserDataRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1SetUserDataRequestImpl(
      type: V1DataType.fromJson(json['type'] as String),
      encryptedValue: json['encryptedValue'] as String,
      hash: json['hash'] as String,
      signature: json['signature'] as String,
    );

Map<String, dynamic> _$$V1SetUserDataRequestImplToJson(
        _$V1SetUserDataRequestImpl instance) =>
    <String, dynamic>{
      'type': _$V1DataTypeEnumMap[instance.type]!,
      'encryptedValue': instance.encryptedValue,
      'hash': instance.hash,
      'signature': instance.signature,
    };

const _$V1DataTypeEnumMap = {
  V1DataType.dataTypeUnspecified: 'DATA_TYPE_UNSPECIFIED',
  V1DataType.dataTypePhone: 'DATA_TYPE_PHONE',
  V1DataType.dataTypeEmail: 'DATA_TYPE_EMAIL',
  V1DataType.dataTypeName: 'DATA_TYPE_NAME',
  V1DataType.dataTypeBirthDate: 'DATA_TYPE_BIRTH_DATE',
  V1DataType.dataTypeDocument: 'DATA_TYPE_DOCUMENT',
  V1DataType.dataTypeBankInfo: 'DATA_TYPE_BANK_INFO',
  V1DataType.dataTypeSelfieImage: 'DATA_TYPE_SELFIE_IMAGE',
  V1DataType.$unknown: r'$unknown',
};
