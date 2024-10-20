// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_init_document_validation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$V1InitDocumentValidationRequestImpl
    _$$V1InitDocumentValidationRequestImplFromJson(Map<String, dynamic> json) =>
        _$V1InitDocumentValidationRequestImpl(
          name: json['name'] as String,
          document: json['document'] as String,
          birthDate: json['birthDate'] as String,
          selfieImage: json['selfieImage'] as String,
        );

Map<String, dynamic> _$$V1InitDocumentValidationRequestImplToJson(
        _$V1InitDocumentValidationRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'document': instance.document,
      'birthDate': instance.birthDate,
      'selfieImage': instance.selfieImage,
    };
