// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_validation_data_field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1ValidationDataFieldImpl _$$V1ValidationDataFieldImplFromJson(
        Map<String, dynamic> json) =>
    _$V1ValidationDataFieldImpl(
      id: json['id'] as String,
      validatorPublicKey: json['validatorPublicKey'] as String,
      dataId: json['dataId'] as String,
      status: V1ValidationStatus.fromJson(json['status'] as String),
      hash: json['hash'] as String,
      signature: json['signature'] as String,
      validatedAt: DateTime.parse(json['validatedAt'] as String),
    );

Map<String, dynamic> _$$V1ValidationDataFieldImplToJson(
        _$V1ValidationDataFieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'validatorPublicKey': instance.validatorPublicKey,
      'dataId': instance.dataId,
      'status': _$V1ValidationStatusEnumMap[instance.status]!,
      'hash': instance.hash,
      'signature': instance.signature,
      'validatedAt': instance.validatedAt.toIso8601String(),
    };

const _$V1ValidationStatusEnumMap = {
  V1ValidationStatus.validationStatusUnspecified:
      'VALIDATION_STATUS_UNSPECIFIED',
  V1ValidationStatus.validationStatusPending: 'VALIDATION_STATUS_PENDING',
  V1ValidationStatus.validationStatusApproved: 'VALIDATION_STATUS_APPROVED',
  V1ValidationStatus.validationStatusRejected: 'VALIDATION_STATUS_REJECTED',
  V1ValidationStatus.$unknown: r'$unknown',
};
