//
//  Generated code. Do not modify.
//  source: set_validation_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use setValidationDataRequestDescriptor instead')
const SetValidationDataRequest$json = {
  '1': 'SetValidationDataRequest',
  '2': [
    {'1': 'data_id', '3': 1, '4': 1, '5': 9, '10': 'dataId'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.brij.storage.v1.ValidationStatus', '10': 'status'},
    {'1': 'hash', '3': 3, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'signature', '3': 4, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `SetValidationDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setValidationDataRequestDescriptor = $convert.base64Decode(
    'ChhTZXRWYWxpZGF0aW9uRGF0YVJlcXVlc3QSFwoHZGF0YV9pZBgBIAEoCVIGZGF0YUlkEjkKBn'
    'N0YXR1cxgCIAEoDjIhLmJyaWouc3RvcmFnZS52MS5WYWxpZGF0aW9uU3RhdHVzUgZzdGF0dXMS'
    'EgoEaGFzaBgDIAEoCVIEaGFzaBIcCglzaWduYXR1cmUYBCABKAlSCXNpZ25hdHVyZQ==');

@$core.Deprecated('Use setValidationDataResponseDescriptor instead')
const SetValidationDataResponse$json = {
  '1': 'SetValidationDataResponse',
};

/// Descriptor for `SetValidationDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setValidationDataResponseDescriptor = $convert.base64Decode(
    'ChlTZXRWYWxpZGF0aW9uRGF0YVJlc3BvbnNl');
