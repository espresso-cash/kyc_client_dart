//
//  Generated code. Do not modify.
//  source: set_validation_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'validation_status.pbenum.dart' as $13;

class SetValidationDataRequest extends $pb.GeneratedMessage {
  factory SetValidationDataRequest({
    $core.String? dataId,
    $13.ValidationStatus? status,
    $core.String? hash,
    $core.String? signature,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    if (status != null) {
      $result.status = status;
    }
    if (hash != null) {
      $result.hash = hash;
    }
    if (signature != null) {
      $result.signature = signature;
    }
    return $result;
  }
  SetValidationDataRequest._() : super();
  factory SetValidationDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetValidationDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetValidationDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..e<$13.ValidationStatus>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $13.ValidationStatus.VALIDATION_STATUS_UNSPECIFIED, valueOf: $13.ValidationStatus.valueOf, enumValues: $13.ValidationStatus.values)
    ..aOS(3, _omitFieldNames ? '' : 'hash')
    ..aOS(4, _omitFieldNames ? '' : 'signature')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetValidationDataRequest clone() => SetValidationDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetValidationDataRequest copyWith(void Function(SetValidationDataRequest) updates) => super.copyWith((message) => updates(message as SetValidationDataRequest)) as SetValidationDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetValidationDataRequest create() => SetValidationDataRequest._();
  SetValidationDataRequest createEmptyInstance() => create();
  static $pb.PbList<SetValidationDataRequest> createRepeated() => $pb.PbList<SetValidationDataRequest>();
  @$core.pragma('dart2js:noInline')
  static SetValidationDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetValidationDataRequest>(create);
  static SetValidationDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);

  @$pb.TagNumber(2)
  $13.ValidationStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status($13.ValidationStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

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
}

class SetValidationDataResponse extends $pb.GeneratedMessage {
  factory SetValidationDataResponse() => create();
  SetValidationDataResponse._() : super();
  factory SetValidationDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetValidationDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetValidationDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetValidationDataResponse clone() => SetValidationDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetValidationDataResponse copyWith(void Function(SetValidationDataResponse) updates) => super.copyWith((message) => updates(message as SetValidationDataResponse)) as SetValidationDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetValidationDataResponse create() => SetValidationDataResponse._();
  SetValidationDataResponse createEmptyInstance() => create();
  static $pb.PbList<SetValidationDataResponse> createRepeated() => $pb.PbList<SetValidationDataResponse>();
  @$core.pragma('dart2js:noInline')
  static SetValidationDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetValidationDataResponse>(create);
  static SetValidationDataResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
