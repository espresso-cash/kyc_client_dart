//
//  Generated code. Do not modify.
//  source: remove_user_data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RemoveUserDataRequest extends $pb.GeneratedMessage {
  factory RemoveUserDataRequest({
    $core.String? dataId,
  }) {
    final $result = create();
    if (dataId != null) {
      $result.dataId = dataId;
    }
    return $result;
  }
  RemoveUserDataRequest._() : super();
  factory RemoveUserDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveUserDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveUserDataRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dataId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveUserDataRequest clone() => RemoveUserDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveUserDataRequest copyWith(void Function(RemoveUserDataRequest) updates) => super.copyWith((message) => updates(message as RemoveUserDataRequest)) as RemoveUserDataRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveUserDataRequest create() => RemoveUserDataRequest._();
  RemoveUserDataRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveUserDataRequest> createRepeated() => $pb.PbList<RemoveUserDataRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveUserDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveUserDataRequest>(create);
  static RemoveUserDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dataId => $_getSZ(0);
  @$pb.TagNumber(1)
  set dataId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDataId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDataId() => clearField(1);
}

class RemoveUserDataResponse extends $pb.GeneratedMessage {
  factory RemoveUserDataResponse() => create();
  RemoveUserDataResponse._() : super();
  factory RemoveUserDataResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveUserDataResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoveUserDataResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveUserDataResponse clone() => RemoveUserDataResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveUserDataResponse copyWith(void Function(RemoveUserDataResponse) updates) => super.copyWith((message) => updates(message as RemoveUserDataResponse)) as RemoveUserDataResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveUserDataResponse create() => RemoveUserDataResponse._();
  RemoveUserDataResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveUserDataResponse> createRepeated() => $pb.PbList<RemoveUserDataResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveUserDataResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveUserDataResponse>(create);
  static RemoveUserDataResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
