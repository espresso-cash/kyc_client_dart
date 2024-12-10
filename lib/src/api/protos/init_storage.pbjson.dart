//
//  Generated code. Do not modify.
//  source: init_storage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use initStorageRequestDescriptor instead')
const InitStorageRequest$json = {
  '1': 'InitStorageRequest',
  '2': [
    {'1': 'wallet_address', '3': 1, '4': 1, '5': 9, '10': 'walletAddress'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'encrypted_secret_key', '3': 3, '4': 1, '5': 9, '10': 'encryptedSecretKey'},
    {'1': 'wallet_proof_signature', '3': 4, '4': 1, '5': 9, '10': 'walletProofSignature'},
    {'1': 'wallet_proof_message', '3': 5, '4': 1, '5': 9, '10': 'walletProofMessage'},
  ],
};

/// Descriptor for `InitStorageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initStorageRequestDescriptor = $convert.base64Decode(
    'ChJJbml0U3RvcmFnZVJlcXVlc3QSJQoOd2FsbGV0X2FkZHJlc3MYASABKAlSDXdhbGxldEFkZH'
    'Jlc3MSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRIwChRlbmNyeXB0ZWRfc2VjcmV0X2tleRgD'
    'IAEoCVISZW5jcnlwdGVkU2VjcmV0S2V5EjQKFndhbGxldF9wcm9vZl9zaWduYXR1cmUYBCABKA'
    'lSFHdhbGxldFByb29mU2lnbmF0dXJlEjAKFHdhbGxldF9wcm9vZl9tZXNzYWdlGAUgASgJUhJ3'
    'YWxsZXRQcm9vZk1lc3NhZ2U=');

@$core.Deprecated('Use initStorageResponseDescriptor instead')
const InitStorageResponse$json = {
  '1': 'InitStorageResponse',
};

/// Descriptor for `InitStorageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initStorageResponseDescriptor = $convert.base64Decode(
    'ChNJbml0U3RvcmFnZVJlc3BvbnNl');

