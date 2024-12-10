//
//  Generated code. Do not modify.
//  source: get_partner_info.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getPartnerInfoRequestDescriptor instead')
const GetPartnerInfoRequest$json = {
  '1': 'GetPartnerInfoRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetPartnerInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPartnerInfoRequestDescriptor = $convert.base64Decode(
    'ChVHZXRQYXJ0bmVySW5mb1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use getPartnerInfoResponseDescriptor instead')
const GetPartnerInfoResponse$json = {
  '1': 'GetPartnerInfoResponse',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'public_key', '3': 2, '4': 1, '5': 9, '10': 'publicKey'},
  ],
};

/// Descriptor for `GetPartnerInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPartnerInfoResponseDescriptor = $convert.base64Decode(
    'ChZHZXRQYXJ0bmVySW5mb1Jlc3BvbnNlEhIKBG5hbWUYASABKAlSBG5hbWUSHQoKcHVibGljX2'
    'tleRgCIAEoCVIJcHVibGljS2V5');

