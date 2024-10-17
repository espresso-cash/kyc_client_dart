//
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use documentTypeDescriptor instead')
const DocumentType$json = {
  '1': 'DocumentType',
  '2': [
    {'1': 'DOCUMENT_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'DOCUMENT_TYPE_VOTER_ID', '2': 1},
  ],
};

/// Descriptor for `DocumentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List documentTypeDescriptor = $convert.base64Decode(
    'CgxEb2N1bWVudFR5cGUSHQoZRE9DVU1FTlRfVFlQRV9VTlNQRUNJRklFRBAAEhoKFkRPQ1VNRU'
    '5UX1RZUEVfVk9URVJfSUQQAQ==');

@$core.Deprecated('Use validationStatusDescriptor instead')
const ValidationStatus$json = {
  '1': 'ValidationStatus',
  '2': [
    {'1': 'VALIDATION_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'VALIDATION_STATUS_PENDING', '2': 1},
    {'1': 'VALIDATION_STATUS_APPROVED', '2': 2},
    {'1': 'VALIDATION_STATUS_REJECTED', '2': 3},
  ],
};

/// Descriptor for `ValidationStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List validationStatusDescriptor = $convert.base64Decode(
    'ChBWYWxpZGF0aW9uU3RhdHVzEiEKHVZBTElEQVRJT05fU1RBVFVTX1VOU1BFQ0lGSUVEEAASHQ'
    'oZVkFMSURBVElPTl9TVEFUVVNfUEVORElORxABEh4KGlZBTElEQVRJT05fU1RBVFVTX0FQUFJP'
    'VkVEEAISHgoaVkFMSURBVElPTl9TVEFUVVNfUkVKRUNURUQQAw==');

@$core.Deprecated('Use wrappedDataDescriptor instead')
const WrappedData$json = {
  '1': 'WrappedData',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'email'},
    {'1': 'name', '3': 2, '4': 1, '5': 11, '6': '.espressocash.data.v1.Name', '9': 0, '10': 'name'},
    {'1': 'birth_date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'birthDate'},
    {'1': 'phone', '3': 4, '4': 1, '5': 9, '9': 0, '10': 'phone'},
    {'1': 'document', '3': 5, '4': 1, '5': 11, '6': '.espressocash.data.v1.Document', '9': 0, '10': 'document'},
    {'1': 'bank_info', '3': 6, '4': 1, '5': 11, '6': '.espressocash.data.v1.BankInfo', '9': 0, '10': 'bankInfo'},
    {'1': 'selfie_image', '3': 7, '4': 1, '5': 12, '9': 0, '10': 'selfieImage'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `WrappedData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wrappedDataDescriptor = $convert.base64Decode(
    'CgtXcmFwcGVkRGF0YRIWCgVlbWFpbBgBIAEoCUgAUgVlbWFpbBIwCgRuYW1lGAIgASgLMhouZX'
    'NwcmVzc29jYXNoLmRhdGEudjEuTmFtZUgAUgRuYW1lEjsKCmJpcnRoX2RhdGUYAyABKAsyGi5n'
    'b29nbGUucHJvdG9idWYuVGltZXN0YW1wSABSCWJpcnRoRGF0ZRIWCgVwaG9uZRgEIAEoCUgAUg'
    'VwaG9uZRI8Cghkb2N1bWVudBgFIAEoCzIeLmVzcHJlc3NvY2FzaC5kYXRhLnYxLkRvY3VtZW50'
    'SABSCGRvY3VtZW50Ej0KCWJhbmtfaW5mbxgGIAEoCzIeLmVzcHJlc3NvY2FzaC5kYXRhLnYxLk'
    'JhbmtJbmZvSABSCGJhbmtJbmZvEiMKDHNlbGZpZV9pbWFnZRgHIAEoDEgAUgtzZWxmaWVJbWFn'
    'ZUIGCgRkYXRh');

@$core.Deprecated('Use nameDescriptor instead')
const Name$json = {
  '1': 'Name',
  '2': [
    {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
  ],
};

/// Descriptor for `Name`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nameDescriptor = $convert.base64Decode(
    'CgROYW1lEh0KCmZpcnN0X25hbWUYASABKAlSCWZpcnN0TmFtZRIbCglsYXN0X25hbWUYAiABKA'
    'lSCGxhc3ROYW1l');

@$core.Deprecated('Use documentDescriptor instead')
const Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.espressocash.data.v1.DocumentType', '10': 'type'},
    {'1': 'number', '3': 2, '4': 1, '5': 9, '10': 'number'},
    {'1': 'country_code', '3': 8, '4': 1, '5': 9, '10': 'countryCode'},
  ],
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode(
    'CghEb2N1bWVudBI2CgR0eXBlGAEgASgOMiIuZXNwcmVzc29jYXNoLmRhdGEudjEuRG9jdW1lbn'
    'RUeXBlUgR0eXBlEhYKBm51bWJlchgCIAEoCVIGbnVtYmVyEiEKDGNvdW50cnlfY29kZRgIIAEo'
    'CVILY291bnRyeUNvZGU=');

@$core.Deprecated('Use bankInfoDescriptor instead')
const BankInfo$json = {
  '1': 'BankInfo',
  '2': [
    {'1': 'account_number', '3': 1, '4': 1, '5': 9, '10': 'accountNumber'},
    {'1': 'bank_code', '3': 2, '4': 1, '5': 9, '10': 'bankCode'},
    {'1': 'bank_name', '3': 3, '4': 1, '5': 9, '10': 'bankName'},
  ],
};

/// Descriptor for `BankInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bankInfoDescriptor = $convert.base64Decode(
    'CghCYW5rSW5mbxIlCg5hY2NvdW50X251bWJlchgBIAEoCVINYWNjb3VudE51bWJlchIbCgliYW'
    '5rX2NvZGUYAiABKAlSCGJhbmtDb2RlEhsKCWJhbmtfbmFtZRgDIAEoCVIIYmFua05hbWU=');

@$core.Deprecated('Use wrappedValidationDescriptor instead')
const WrappedValidation$json = {
  '1': 'WrappedValidation',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 11, '6': '.espressocash.data.v1.HashValidation', '9': 0, '10': 'hash'},
    {'1': 'custom', '3': 2, '4': 1, '5': 11, '6': '.espressocash.data.v1.CustomValidation', '9': 0, '10': 'custom'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `WrappedValidation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wrappedValidationDescriptor = $convert.base64Decode(
    'ChFXcmFwcGVkVmFsaWRhdGlvbhI6CgRoYXNoGAEgASgLMiQuZXNwcmVzc29jYXNoLmRhdGEudj'
    'EuSGFzaFZhbGlkYXRpb25IAFIEaGFzaBJACgZjdXN0b20YAiABKAsyJi5lc3ByZXNzb2Nhc2gu'
    'ZGF0YS52MS5DdXN0b21WYWxpZGF0aW9uSABSBmN1c3RvbUIGCgRkYXRh');

@$core.Deprecated('Use hashValidationDescriptor instead')
const HashValidation$json = {
  '1': 'HashValidation',
  '2': [
    {'1': 'hash', '3': 1, '4': 1, '5': 9, '10': 'hash'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.espressocash.data.v1.ValidationStatus', '10': 'status'},
  ],
};

/// Descriptor for `HashValidation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hashValidationDescriptor = $convert.base64Decode(
    'Cg5IYXNoVmFsaWRhdGlvbhISCgRoYXNoGAEgASgJUgRoYXNoEj4KBnN0YXR1cxgCIAEoDjImLm'
    'VzcHJlc3NvY2FzaC5kYXRhLnYxLlZhbGlkYXRpb25TdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use customValidationDescriptor instead')
const CustomValidation$json = {
  '1': 'CustomValidation',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `CustomValidation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customValidationDescriptor = $convert.base64Decode(
    'ChBDdXN0b21WYWxpZGF0aW9uEhIKBHR5cGUYASABKAlSBHR5cGUSEgoEZGF0YRgCIAEoDFIEZG'
    'F0YQ==');

