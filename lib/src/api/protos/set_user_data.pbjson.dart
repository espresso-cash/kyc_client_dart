//
//  Generated code. Do not modify.
//  source: set_user_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use setUserDataRequestDescriptor instead')
const SetUserDataRequest$json = {
  '1': 'SetUserDataRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.brij.storage.v1.DataType', '10': 'type'},
    {'1': 'encrypted_value', '3': 2, '4': 1, '5': 12, '10': 'encryptedValue'},
    {'1': 'hash', '3': 3, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'signature', '3': 4, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `SetUserDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUserDataRequestDescriptor = $convert.base64Decode(
    'ChJTZXRVc2VyRGF0YVJlcXVlc3QSLQoEdHlwZRgBIAEoDjIZLmJyaWouc3RvcmFnZS52MS5EYX'
    'RhVHlwZVIEdHlwZRInCg9lbmNyeXB0ZWRfdmFsdWUYAiABKAxSDmVuY3J5cHRlZFZhbHVlEhIK'
    'BGhhc2gYAyABKAlSBGhhc2gSHAoJc2lnbmF0dXJlGAQgASgJUglzaWduYXR1cmU=');

@$core.Deprecated('Use setUserDataResponseDescriptor instead')
const SetUserDataResponse$json = {
  '1': 'SetUserDataResponse',
};

/// Descriptor for `SetUserDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setUserDataResponseDescriptor = $convert.base64Decode(
    'ChNTZXRVc2VyRGF0YVJlc3BvbnNl');

