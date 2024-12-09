// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_grant_access_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1GrantAccessRequestImpl _$$V1GrantAccessRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1GrantAccessRequestImpl(
      partnerPublicKey: json['partnerPublicKey'] as String,
      encryptedSecretKey: json['encryptedSecretKey'] as String,
    );

Map<String, dynamic> _$$V1GrantAccessRequestImplToJson(
        _$V1GrantAccessRequestImpl instance) =>
    <String, dynamic>{
      'partnerPublicKey': instance.partnerPublicKey,
      'encryptedSecretKey': instance.encryptedSecretKey,
    };
