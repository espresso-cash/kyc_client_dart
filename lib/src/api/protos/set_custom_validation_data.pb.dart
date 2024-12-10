//
//  Generated code. Do not modify.
//  source: set_custom_validation_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SetCustomValidationDataRequest extends $pb.GeneratedMessage {
  factory SetCustomValidationDataRequest({
    $core.String? type,
    $core.List<$core.int>? encryptedValue,
    $core.String? hash,
    $core.String? signature,
    $core.String? userPublicKey,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (encryptedValue != null) {
      $result.encryptedValue = encryptedValue;
    }
    if (hash != null) {
      $result.hash = hash;
    }
    if (signature != null) {
      $result.signature = signature;
    }
    if (userPublicKey != null) {
      $result.userPublicKey = userPublicKey;
    }
    return $result;
  }
  SetCustomValidationDataRequest._() : super();
  factory SetCustomValidationDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCustomValidationDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCustomValidationDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'encryptedValue', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'hash')
    ..aOS(4, _omitFieldNames ? '' : 'signature')
    ..aOS(5, _omitFieldNames ? '' : 'userPublicKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCustomValidationDataRequest clone() => SetCustomValidationDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCustomValidationDataRequest copyWith(void Function(SetCustomValidationDataRequest) updates) => super.copyWith((message) => updates(message as SetCustomValidationDataRequest)) as SetCustomValidationDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCustomValidationDataRequest create() => SetCustomValidationDataRequest._();
  SetCustomValidationDataRequest createEmptyInstance() => create();
  static $pb.PbList<SetCustomValidationDataRequest> createRepeated() => $pb.PbList<SetCustomValidationDataRequest>();
  @$core.pragma('dart2js:noInline')
  static SetCustomValidationDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCustomValidationDataRequest>(create);
  static SetCustomValidationDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encryptedValue => $_getN(1);
  @$pb.TagNumber(2)
  set encryptedValue($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncryptedValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncryptedValue() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get hash => $_getSZ(2);
  @$pb.TagNumber(3)
  set hash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get signature => $_getSZ(3);
  @$pb.TagNumber(4)
  set signature($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearSignature() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get userPublicKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set userPublicKey($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUserPublicKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearUserPublicKey() => clearField(5);
}

class SetCustomValidationDataResponse extends $pb.GeneratedMessage {
  factory SetCustomValidationDataResponse() => create();
  SetCustomValidationDataResponse._() : super();
  factory SetCustomValidationDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCustomValidationDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCustomValidationDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCustomValidationDataResponse clone() => SetCustomValidationDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCustomValidationDataResponse copyWith(void Function(SetCustomValidationDataResponse) updates) => super.copyWith((message) => updates(message as SetCustomValidationDataResponse)) as SetCustomValidationDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCustomValidationDataResponse create() => SetCustomValidationDataResponse._();
  SetCustomValidationDataResponse createEmptyInstance() => create();
  static $pb.PbList<SetCustomValidationDataResponse> createRepeated() => $pb.PbList<SetCustomValidationDataResponse>();
  @$core.pragma('dart2js:noInline')
  static SetCustomValidationDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCustomValidationDataResponse>(create);
  static SetCustomValidationDataResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
