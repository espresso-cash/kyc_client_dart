// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      email: (json['email'] as List<dynamic>?)
          ?.map((e) => Email.fromJson(e as Map<String, dynamic>))
          .toList(),
      phone: (json['phone'] as List<dynamic>?)
          ?.map((e) => Phone.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: (json['name'] as List<dynamic>?)
          ?.map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
      birthDate: (json['birthDate'] as List<dynamic>?)
          ?.map((e) => BirthDate.fromJson(e as Map<String, dynamic>))
          .toList(),
      document: (json['document'] as List<dynamic>?)
          ?.map((e) => Document.fromJson(e as Map<String, dynamic>))
          .toList(),
      bankInfo: (json['bankInfo'] as List<dynamic>?)
          ?.map((e) => BankInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      selfie: (json['selfie'] as List<dynamic>?)
          ?.map((e) => Selfie.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$EmailImplToJson(_$EmailImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'verified': instance.verified,
    };

_$PhoneImpl _$$PhoneImplFromJson(Map<String, dynamic> json) => _$PhoneImpl(
      value: json['value'] as String,
      id: json['id'] as String? ?? '',
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$PhoneImplToJson(_$PhoneImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'verified': instance.verified,
    };

_$SelfieImpl _$$SelfieImplFromJson(Map<String, dynamic> json) => _$SelfieImpl(
      value: (json['value'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      id: json['id'] as String? ?? '',
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$SelfieImplToJson(_$SelfieImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'id': instance.id,
      'verified': instance.verified,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      id: json['id'] as String? ?? '',
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'id': instance.id,
      'verified': instance.verified,
    };

_$BirthDateImpl _$$BirthDateImplFromJson(Map<String, dynamic> json) =>
    _$BirthDateImpl(
      value: DateTime.parse(json['value'] as String),
      id: json['id'] as String? ?? '',
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$BirthDateImplToJson(_$BirthDateImpl instance) =>
    <String, dynamic>{
      'value': instance.value.toIso8601String(),
      'id': instance.id,
      'verified': instance.verified,
    };

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      type: $enumDecode(_$IdTypeEnumMap, json['type']),
      number: json['number'] as String,
      countryCode: json['countryCode'] as String,
      id: json['id'] as String? ?? '',
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'type': _$IdTypeEnumMap[instance.type]!,
      'number': instance.number,
      'countryCode': instance.countryCode,
      'id': instance.id,
      'verified': instance.verified,
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
      verified: json['verified'] as bool?,
    );

Map<String, dynamic> _$$BankInfoImplToJson(_$BankInfoImpl instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'bankCode': instance.bankCode,
      'accountNumber': instance.accountNumber,
      'id': instance.id,
      'verified': instance.verified,
    };
