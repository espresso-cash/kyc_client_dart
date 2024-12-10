//
//  Generated code. Do not modify.
//  source: get_user_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'custom_validation_data_field.pb.dart' as $5;
import 'user_data_field.pb.dart' as $3;
import 'validation_data_field.pb.dart' as $4;

class GetUserDataRequest extends $pb.GeneratedMessage {
  factory GetUserDataRequest({
    $core.String? userPublicKey,
    $core.bool? includeValues,
  }) {
    final $result = create();
    if (userPublicKey != null) {
      $result.userPublicKey = userPublicKey;
    }
    if (includeValues != null) {
      $result.includeValues = includeValues;
    }
    return $result;
  }
  GetUserDataRequest._() : super();
  factory GetUserDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userPublicKey')
    ..aOB(2, _omitFieldNames ? '' : 'includeValues')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserDataRequest clone() => GetUserDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserDataRequest copyWith(void Function(GetUserDataRequest) updates) => super.copyWith((message) => updates(message as GetUserDataRequest)) as GetUserDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserDataRequest create() => GetUserDataRequest._();
  GetUserDataRequest createEmptyInstance() => create();
  static $pb.PbList<GetUserDataRequest> createRepeated() => $pb.PbList<GetUserDataRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUserDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserDataRequest>(create);
  static GetUserDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userPublicKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set userPublicKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeValues => $_getBF(1);
  @$pb.TagNumber(2)
  set includeValues($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeValues() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeValues() => clearField(2);
}

class GetUserDataResponse extends $pb.GeneratedMessage {
  factory GetUserDataResponse({
    $core.Iterable<$3.UserDataField>? userData,
    $core.Iterable<$4.ValidationDataField>? validationData,
    $core.Iterable<$5.CustomValidationDataField>? customValidationData,
  }) {
    final $result = create();
    if (userData != null) {
      $result.userData.addAll(userData);
    }
    if (validationData != null) {
      $result.validationData.addAll(validationData);
    }
    if (customValidationData != null) {
      $result.customValidationData.addAll(customValidationData);
    }
    return $result;
  }
  GetUserDataResponse._() : super();
  factory GetUserDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..pc<$3.UserDataField>(1, _omitFieldNames ? '' : 'userData', $pb.PbFieldType.PM, subBuilder: $3.UserDataField.create)
    ..pc<$4.ValidationDataField>(2, _omitFieldNames ? '' : 'validationData', $pb.PbFieldType.PM, subBuilder: $4.ValidationDataField.create)
    ..pc<$5.CustomValidationDataField>(3, _omitFieldNames ? '' : 'customValidationData', $pb.PbFieldType.PM, subBuilder: $5.CustomValidationDataField.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserDataResponse clone() => GetUserDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserDataResponse copyWith(void Function(GetUserDataResponse) updates) => super.copyWith((message) => updates(message as GetUserDataResponse)) as GetUserDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserDataResponse create() => GetUserDataResponse._();
  GetUserDataResponse createEmptyInstance() => create();
  static $pb.PbList<GetUserDataResponse> createRepeated() => $pb.PbList<GetUserDataResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUserDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserDataResponse>(create);
  static GetUserDataResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$3.UserDataField> get userData => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$4.ValidationDataField> get validationData => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$5.CustomValidationDataField> get customValidationData => $_getList(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
