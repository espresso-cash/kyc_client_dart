//
//  Generated code. Do not modify.
//  source: set_custom_validation_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use setCustomValidationDataRequestDescriptor instead')
const SetCustomValidationDataRequest$json = {
  '1': 'SetCustomValidationDataRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'encrypted_value', '3': 2, '4': 1, '5': 12, '10': 'encryptedValue'},
    {'1': 'hash', '3': 3, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'signature', '3': 4, '4': 1, '5': 9, '10': 'signature'},
    {'1': 'user_public_key', '3': 5, '4': 1, '5': 9, '10': 'userPublicKey'},
  ],
};

/// Descriptor for `SetCustomValidationDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCustomValidationDataRequestDescriptor = $convert.base64Decode(
    'Ch5TZXRDdXN0b21WYWxpZGF0aW9uRGF0YVJlcXVlc3QSEgoEdHlwZRgBIAEoCVIEdHlwZRInCg'
    '9lbmNyeXB0ZWRfdmFsdWUYAiABKAxSDmVuY3J5cHRlZFZhbHVlEhIKBGhhc2gYAyABKAlSBGhh'
    'c2gSHAoJc2lnbmF0dXJlGAQgASgJUglzaWduYXR1cmUSJgoPdXNlcl9wdWJsaWNfa2V5GAUgAS'
    'gJUg11c2VyUHVibGljS2V5');

@$core.Deprecated('Use setCustomValidationDataResponseDescriptor instead')
const SetCustomValidationDataResponse$json = {
  '1': 'SetCustomValidationDataResponse',
};

/// Descriptor for `SetCustomValidationDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCustomValidationDataResponseDescriptor = $convert.base64Decode(
    'Ch9TZXRDdXN0b21WYWxpZGF0aW9uRGF0YVJlc3BvbnNl');

