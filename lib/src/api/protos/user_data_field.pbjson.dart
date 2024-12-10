//
//  Generated code. Do not modify.
//  source: user_data_field.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userDataFieldDescriptor instead')
const UserDataField$json = {
  '1': 'UserDataField',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.brij.storage.v1.DataType', '10': 'type'},
    {'1': 'encrypted_value', '3': 3, '4': 1, '5': 12, '10': 'encryptedValue'},
    {'1': 'hash', '3': 4, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'signature', '3': 5, '4': 1, '5': 9, '10': 'signature'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `UserDataField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDataFieldDescriptor = $convert.base64Decode(
    'Cg1Vc2VyRGF0YUZpZWxkEg4KAmlkGAEgASgJUgJpZBItCgR0eXBlGAIgASgOMhkuYnJpai5zdG'
    '9yYWdlLnYxLkRhdGFUeXBlUgR0eXBlEicKD2VuY3J5cHRlZF92YWx1ZRgDIAEoDFIOZW5jcnlw'
    'dGVkVmFsdWUSEgoEaGFzaBgEIAEoCVIEaGFzaBIcCglzaWduYXR1cmUYBSABKAlSCXNpZ25hdH'
    'VyZRI5CgpjcmVhdGVkX2F0GAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3Jl'
    'YXRlZEF0');

