//
//  Generated code. Do not modify.
//  source: get_user_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getUserDataRequestDescriptor instead')
const GetUserDataRequest$json = {
  '1': 'GetUserDataRequest',
  '2': [
    {'1': 'user_public_key', '3': 1, '4': 1, '5': 9, '10': 'userPublicKey'},
    {'1': 'include_values', '3': 2, '4': 1, '5': 8, '10': 'includeValues'},
  ],
};

/// Descriptor for `GetUserDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserDataRequestDescriptor = $convert.base64Decode(
    'ChJHZXRVc2VyRGF0YVJlcXVlc3QSJgoPdXNlcl9wdWJsaWNfa2V5GAEgASgJUg11c2VyUHVibG'
    'ljS2V5EiUKDmluY2x1ZGVfdmFsdWVzGAIgASgIUg1pbmNsdWRlVmFsdWVz');

@$core.Deprecated('Use getUserDataResponseDescriptor instead')
const GetUserDataResponse$json = {
  '1': 'GetUserDataResponse',
  '2': [
    {'1': 'user_data', '3': 1, '4': 3, '5': 11, '6': '.brij.storage.v1.UserDataField', '10': 'userData'},
    {'1': 'validation_data', '3': 2, '4': 3, '5': 11, '6': '.brij.storage.v1.ValidationDataField', '10': 'validationData'},
    {'1': 'custom_validation_data', '3': 3, '4': 3, '5': 11, '6': '.brij.storage.v1.CustomValidationDataField', '10': 'customValidationData'},
  ],
};

/// Descriptor for `GetUserDataResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserDataResponseDescriptor = $convert.base64Decode(
    'ChNHZXRVc2VyRGF0YVJlc3BvbnNlEjsKCXVzZXJfZGF0YRgBIAMoCzIeLmJyaWouc3RvcmFnZS'
    '52MS5Vc2VyRGF0YUZpZWxkUgh1c2VyRGF0YRJNCg92YWxpZGF0aW9uX2RhdGEYAiADKAsyJC5i'
    'cmlqLnN0b3JhZ2UudjEuVmFsaWRhdGlvbkRhdGFGaWVsZFIOdmFsaWRhdGlvbkRhdGESYAoWY3'
    'VzdG9tX3ZhbGlkYXRpb25fZGF0YRgDIAMoCzIqLmJyaWouc3RvcmFnZS52MS5DdXN0b21WYWxp'
    'ZGF0aW9uRGF0YUZpZWxkUhRjdXN0b21WYWxpZGF0aW9uRGF0YQ==');

