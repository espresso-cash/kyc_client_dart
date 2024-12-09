// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_set_validation_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1SetValidationDataRequestImpl _$$V1SetValidationDataRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$V1SetValidationDataRequestImpl(
      dataId: json['dataId'] as String,
      status: V1ValidationStatus.fromJson(json['status'] as String),
      hash: json['hash'] as String,
      signature: json['signature'] as String,
    );

Map<String, dynamic> _$$V1SetValidationDataRequestImplToJson(
        _$V1SetValidationDataRequestImpl instance) =>
    <String, dynamic>{
      'dataId': instance.dataId,
      'status': _$V1ValidationStatusEnumMap[instance.status]!,
      'hash': instance.hash,
      'signature': instance.signature,
    };

const _$V1ValidationStatusEnumMap = {
  V1ValidationStatus.validationStatusUnspecified:
      'VALIDATION_STATUS_UNSPECIFIED',
  V1ValidationStatus.validationStatusPending: 'VALIDATION_STATUS_PENDING',
  V1ValidationStatus.validationStatusApproved: 'VALIDATION_STATUS_APPROVED',
  V1ValidationStatus.validationStatusRejected: 'VALIDATION_STATUS_REJECTED',
  V1ValidationStatus.$unknown: r'$unknown',
};
