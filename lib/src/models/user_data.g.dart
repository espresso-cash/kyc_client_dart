// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      email: json['email'] == null
          ? null
          : Email.fromJson(json['email'] as Map<String, dynamic>),
      phone: json['phone'] == null
          ? null
          : Phone.fromJson(json['phone'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      birthDate: json['birthDate'] == null
          ? null
          : BirthDate.fromJson(json['birthDate'] as Map<String, dynamic>),
      document: json['document'] == null
          ? null
          : Document.fromJson(json['document'] as Map<String, dynamic>),
      bankInfo: json['bankInfo'] == null
          ? null
          : BankInfo.fromJson(json['bankInfo'] as Map<String, dynamic>),
      selfie: json['selfie'] == null
          ? null
          : Selfie.fromJson(json['selfie'] as Map<String, dynamic>),
      custom: json['custom'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'name': instance.name,
      'birthDate': instance.birthDate,
      'document': instance.document,
      'bankInfo': instance.bankInfo,
      'selfie': instance.selfie,
      'custom': instance.custom,
    };

_$EmailImpl _$$EmailImplFromJson(Map<String, dynamic> json) => _$EmailImpl(
      value: json['value'] as String,
      id: json['id'] as String? ?? '',
      status: $enumDecodeNullable(_$ValidationStatusEnumMap, json['status']) ??
          ValidationStatus.unspecified,
    );

Map<String, dynamic> _$$EmailImplToJson(_$EmailImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'status': _$ValidationStatusEnumMap[instance.status]!,
    };

const _$ValidationStatusEnumMap = {
  ValidationStatus.unspecified: 'unspecified',
  ValidationStatus.pending: 'pending',
  ValidationStatus.approved: 'approved',
  ValidationStatus.rejected: 'rejected',
  ValidationStatus.unverified: 'unverified',
};

_$PhoneImpl _$$PhoneImplFromJson(Map<String, dynamic> json) => _$PhoneImpl(
      value: json['value'] as String,
      id: json['id'] as String? ?? '',
      status: $enumDecodeNullable(_$ValidationStatusEnumMap, json['status']) ??
          ValidationStatus.unspecified,
    );

Map<String, dynamic> _$$PhoneImplToJson(_$PhoneImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'status': _$ValidationStatusEnumMap[instance.status]!,
    };

_$SelfieImpl _$$SelfieImplFromJson(Map<String, dynamic> json) => _$SelfieImpl(
      value: (json['value'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      id: json['id'] as String? ?? '',
      status: $enumDecodeNullable(_$ValidationStatusEnumMap, json['status']) ??
          ValidationStatus.unspecified,
    );

Map<String, dynamic> _$$SelfieImplToJson(_$SelfieImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'status': _$ValidationStatusEnumMap[instance.status]!,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      id: json['id'] as String? ?? '',
      status: $enumDecodeNullable(_$ValidationStatusEnumMap, json['status']) ??
          ValidationStatus.unspecified,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'id': instance.id,
      'status': _$ValidationStatusEnumMap[instance.status]!,
    };

_$BirthDateImpl _$$BirthDateImplFromJson(Map<String, dynamic> json) =>
    _$BirthDateImpl(
      value: DateTime.parse(json['value'] as String),
      id: json['id'] as String? ?? '',
      status: $enumDecodeNullable(_$ValidationStatusEnumMap, json['status']) ??
          ValidationStatus.unspecified,
    );

Map<String, dynamic> _$$BirthDateImplToJson(_$BirthDateImpl instance) =>
    <String, dynamic>{
      'value': instance.value.toIso8601String(),
      'id': instance.id,
      'status': _$ValidationStatusEnumMap[instance.status]!,
    };

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      type: $enumDecode(_$IdTypeEnumMap, json['type']),
      number: json['number'] as String,
      countryCode: json['countryCode'] as String,
      id: json['id'] as String? ?? '',
      status: $enumDecodeNullable(_$ValidationStatusEnumMap, json['status']) ??
          ValidationStatus.unspecified,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'type': _$IdTypeEnumMap[instance.type]!,
      'number': instance.number,
      'countryCode': instance.countryCode,
      'id': instance.id,
      'status': _$ValidationStatusEnumMap[instance.status]!,
    };

const _$IdTypeEnumMap = {
  IdType.voterId: 'voterId',
  IdType.passport: 'passport',
  IdType.driverLicense: 'driverLicense',
  IdType.other: 'other',
};

_$BankInfoImpl _$$BankInfoImplFromJson(Map<String, dynamic> json) =>
    _$BankInfoImpl(
      bankName: json['bankName'] as String,
      bankCode: json['bankCode'] as String,
      accountNumber: json['accountNumber'] as String,
      id: json['id'] as String? ?? '',
      status: $enumDecodeNullable(_$ValidationStatusEnumMap, json['status']) ??
          ValidationStatus.unspecified,
    );

Map<String, dynamic> _$$BankInfoImplToJson(_$BankInfoImpl instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'bankCode': instance.bankCode,
      'accountNumber': instance.accountNumber,
      'id': instance.id,
      'status': _$ValidationStatusEnumMap[instance.status]!,
    };
