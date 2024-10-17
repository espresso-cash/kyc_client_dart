//
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DocumentType extends $pb.ProtobufEnum {
  static const DocumentType DOCUMENT_TYPE_UNSPECIFIED = DocumentType._(0, _omitEnumNames ? '' : 'DOCUMENT_TYPE_UNSPECIFIED');
  static const DocumentType DOCUMENT_TYPE_VOTER_ID = DocumentType._(1, _omitEnumNames ? '' : 'DOCUMENT_TYPE_VOTER_ID');

  static const $core.List<DocumentType> values = <DocumentType> [
    DOCUMENT_TYPE_UNSPECIFIED,
    DOCUMENT_TYPE_VOTER_ID,
  ];

  static final $core.Map<$core.int, DocumentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DocumentType? valueOf($core.int value) => _byValue[value];

  const DocumentType._($core.int v, $core.String n) : super(v, n);
}

class ValidationStatus extends $pb.ProtobufEnum {
  static const ValidationStatus VALIDATION_STATUS_UNSPECIFIED = ValidationStatus._(0, _omitEnumNames ? '' : 'VALIDATION_STATUS_UNSPECIFIED');
  static const ValidationStatus VALIDATION_STATUS_PENDING = ValidationStatus._(1, _omitEnumNames ? '' : 'VALIDATION_STATUS_PENDING');
  static const ValidationStatus VALIDATION_STATUS_APPROVED = ValidationStatus._(2, _omitEnumNames ? '' : 'VALIDATION_STATUS_APPROVED');
  static const ValidationStatus VALIDATION_STATUS_REJECTED = ValidationStatus._(3, _omitEnumNames ? '' : 'VALIDATION_STATUS_REJECTED');

  static const $core.List<ValidationStatus> values = <ValidationStatus> [
    VALIDATION_STATUS_UNSPECIFIED,
    VALIDATION_STATUS_PENDING,
    VALIDATION_STATUS_APPROVED,
    VALIDATION_STATUS_REJECTED,
  ];

  static final $core.Map<$core.int, ValidationStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ValidationStatus? valueOf($core.int value) => _byValue[value];

  const ValidationStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
