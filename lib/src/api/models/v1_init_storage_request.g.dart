// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_init_storage_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1InitStorageRequestImpl _$$V1InitStorageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1InitStorageRequestImpl(
      walletAddress: json['walletAddress'] as String,
      message: json['message'] as String,
      encryptedSecretKey: json['encryptedSecretKey'] as String,
      walletProofSignature: json['walletProofSignature'] as String,
      walletProofMessage: json['walletProofMessage'] as String,
    );

Map<String, dynamic> _$$V1InitStorageRequestImplToJson(
        _$V1InitStorageRequestImpl instance) =>
    <String, dynamic>{
      'walletAddress': instance.walletAddress,
      'message': instance.message,
      'encryptedSecretKey': instance.encryptedSecretKey,
      'walletProofSignature': instance.walletProofSignature,
      'walletProofMessage': instance.walletProofMessage,
    };
