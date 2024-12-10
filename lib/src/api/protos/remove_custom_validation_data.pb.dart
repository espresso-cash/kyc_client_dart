//
//  Generated code. Do not modify.
//  source: remove_custom_validation_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RemoveCustomValidationDataRequest extends $pb.GeneratedMessage {
  factory RemoveCustomValidationDataRequest({
    $core.String? dataId,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  RemoveCustomValidationDataRequest._() : super();
  factory RemoveCustomValidationDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveCustomValidationDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveCustomValidationDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveCustomValidationDataRequest clone() => RemoveCustomValidationDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveCustomValidationDataRequest copyWith(void Function(RemoveCustomValidationDataRequest) updates) => super.copyWith((message) => updates(message as RemoveCustomValidationDataRequest)) as RemoveCustomValidationDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveCustomValidationDataRequest create() => RemoveCustomValidationDataRequest._();
  RemoveCustomValidationDataRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveCustomValidationDataRequest> createRepeated() => $pb.PbList<RemoveCustomValidationDataRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveCustomValidationDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveCustomValidationDataRequest>(create);
  static RemoveCustomValidationDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);
}

class RemoveCustomValidationDataResponse extends $pb.GeneratedMessage {
  factory RemoveCustomValidationDataResponse() => create();
  RemoveCustomValidationDataResponse._() : super();
  factory RemoveCustomValidationDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveCustomValidationDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveCustomValidationDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveCustomValidationDataResponse clone() => RemoveCustomValidationDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveCustomValidationDataResponse copyWith(void Function(RemoveCustomValidationDataResponse) updates) => super.copyWith((message) => updates(message as RemoveCustomValidationDataResponse)) as RemoveCustomValidationDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveCustomValidationDataResponse create() => RemoveCustomValidationDataResponse._();
  RemoveCustomValidationDataResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveCustomValidationDataResponse> createRepeated() => $pb.PbList<RemoveCustomValidationDataResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveCustomValidationDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveCustomValidationDataResponse>(create);
  static RemoveCustomValidationDataResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
