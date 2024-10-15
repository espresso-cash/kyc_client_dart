// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
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

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
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
      verified: json['verified'] as bool,
      dataId: json['dataId'] as String,
    );

Map<String, dynamic> _$$EmailImplToJson(_$EmailImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'verified': instance.verified,
      'dataId': instance.dataId,
    };

_$PhoneImpl _$$PhoneImplFromJson(Map<String, dynamic> json) => _$PhoneImpl(
      value: json['value'] as String,
      verified: json['verified'] as bool,
      dataId: json['dataId'] as String,
    );

Map<String, dynamic> _$$PhoneImplToJson(_$PhoneImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'verified': instance.verified,
      'dataId': instance.dataId,
    };

_$SelfieImpl _$$SelfieImplFromJson(Map<String, dynamic> json) => _$SelfieImpl(
      value: (json['value'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      verified: json['verified'] as bool,
      dataId: json['dataId'] as String,
    );

Map<String, dynamic> _$$SelfieImplToJson(_$SelfieImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'verified': instance.verified,
      'dataId': instance.dataId,
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      verified: json['verified'] as bool,
      dataId: json['dataId'] as String,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'verified': instance.verified,
      'dataId': instance.dataId,
    };

_$BirthDateImpl _$$BirthDateImplFromJson(Map<String, dynamic> json) =>
    _$BirthDateImpl(
      value: DateTime.parse(json['value'] as String),
      verified: json['verified'] as bool,
      dataId: json['dataId'] as String,
    );

Map<String, dynamic> _$$BirthDateImplToJson(_$BirthDateImpl instance) =>
    <String, dynamic>{
      'value': instance.value.toIso8601String(),
      'verified': instance.verified,
      'dataId': instance.dataId,
    };

_$DocumentImpl _$$DocumentImplFromJson(Map<String, dynamic> json) =>
    _$DocumentImpl(
      type: $enumDecode(_$IdTypeEnumMap, json['type']),
      number: json['number'] as String,
      verified: json['verified'] as bool,
      dataId: json['dataId'] as String,
    );

Map<String, dynamic> _$$DocumentImplToJson(_$DocumentImpl instance) =>
    <String, dynamic>{
      'type': _$IdTypeEnumMap[instance.type]!,
      'number': instance.number,
      'verified': instance.verified,
      'dataId': instance.dataId,
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
      verified: json['verified'] as bool,
      dataId: json['dataId'] as String,
    );

Map<String, dynamic> _$$BankInfoImplToJson(_$BankInfoImpl instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'bankCode': instance.bankCode,
      'accountNumber': instance.accountNumber,
      'verified': instance.verified,
      'dataId': instance.dataId,
    };
