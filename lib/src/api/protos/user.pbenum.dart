//
//  Generated code. Do not modify.
//  source: user.proto
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


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
