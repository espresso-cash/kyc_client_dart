//
//  Generated code. Do not modify.
//  source: grant_access.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GrantAccessRequest extends $pb.GeneratedMessage {
  factory GrantAccessRequest({
    $core.String? partnerPublicKey,
    $core.String? encryptedSecretKey,
  }) {
    final $result = create();
    if (partnerPublicKey != null) {
      $result.partnerPublicKey = partnerPublicKey;
    }
    if (encryptedSecretKey != null) {
      $result.encryptedSecretKey = encryptedSecretKey;
    }
    return $result;
  }
  GrantAccessRequest._() : super();
  factory GrantAccessRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrantAccessRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrantAccessRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'partnerPublicKey')
    ..aOS(2, _omitFieldNames ? '' : 'encryptedSecretKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrantAccessRequest clone() => GrantAccessRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrantAccessRequest copyWith(void Function(GrantAccessRequest) updates) => super.copyWith((message) => updates(message as GrantAccessRequest)) as GrantAccessRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrantAccessRequest create() => GrantAccessRequest._();
  GrantAccessRequest createEmptyInstance() => create();
  static $pb.PbList<GrantAccessRequest> createRepeated() => $pb.PbList<GrantAccessRequest>();
  @$core.pragma('dart2js:noInline')
  static GrantAccessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrantAccessRequest>(create);
  static GrantAccessRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get partnerPublicKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set partnerPublicKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPartnerPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPartnerPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get encryptedSecretKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set encryptedSecretKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncryptedSecretKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncryptedSecretKey() => clearField(2);
}

class GrantAccessResponse extends $pb.GeneratedMessage {
  factory GrantAccessResponse() => create();
  GrantAccessResponse._() : super();
  factory GrantAccessResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GrantAccessResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GrantAccessResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GrantAccessResponse clone() => GrantAccessResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GrantAccessResponse copyWith(void Function(GrantAccessResponse) updates) => super.copyWith((message) => updates(message as GrantAccessResponse)) as GrantAccessResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GrantAccessResponse create() => GrantAccessResponse._();
  GrantAccessResponse createEmptyInstance() => create();
  static $pb.PbList<GrantAccessResponse> createRepeated() => $pb.PbList<GrantAccessResponse>();
  @$core.pragma('dart2js:noInline')
  static GrantAccessResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GrantAccessResponse>(create);
  static GrantAccessResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
