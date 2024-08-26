// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1UserDataImpl _$$V1UserDataImplFromJson(Map<String, dynamic> json) =>
    _$V1UserDataImpl(
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      dob: json['dob'] as String?,
      countryCode: json['countryCode'] as String?,
      idType: json['idType'] as String?,
      idNumber: json['idNumber'] as String?,
      photoIdCard: json['photoIdCard'] as String?,
      photoSelfie: json['photoSelfie'] as String?,
    );

Map<String, dynamic> _$$V1UserDataImplToJson(_$V1UserDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'dob': instance.dob,
      'countryCode': instance.countryCode,
      'idType': instance.idType,
      'idNumber': instance.idNumber,
      'photoIdCard': instance.photoIdCard,
      'photoSelfie': instance.photoSelfie,
    };
