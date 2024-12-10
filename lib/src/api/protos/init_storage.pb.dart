//
//  Generated code. Do not modify.
//  source: init_storage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class InitStorageRequest extends $pb.GeneratedMessage {
  factory InitStorageRequest({
    $core.String? walletAddress,
    $core.String? message,
    $core.String? encryptedSecretKey,
    $core.String? walletProofSignature,
    $core.String? walletProofMessage,
  }) {
    final $result = create();
    if (walletAddress != null) {
      $result.walletAddress = walletAddress;
    }
    if (message != null) {
      $result.message = message;
    }
    if (encryptedSecretKey != null) {
      $result.encryptedSecretKey = encryptedSecretKey;
    }
    if (walletProofSignature != null) {
      $result.walletProofSignature = walletProofSignature;
    }
    if (walletProofMessage != null) {
      $result.walletProofMessage = walletProofMessage;
    }
    return $result;
  }
  InitStorageRequest._() : super();
  factory InitStorageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitStorageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitStorageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'walletAddress')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'encryptedSecretKey')
    ..aOS(4, _omitFieldNames ? '' : 'walletProofSignature')
    ..aOS(5, _omitFieldNames ? '' : 'walletProofMessage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitStorageRequest clone() => InitStorageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitStorageRequest copyWith(void Function(InitStorageRequest) updates) => super.copyWith((message) => updates(message as InitStorageRequest)) as InitStorageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitStorageRequest create() => InitStorageRequest._();
  InitStorageRequest createEmptyInstance() => create();
  static $pb.PbList<InitStorageRequest> createRepeated() => $pb.PbList<InitStorageRequest>();
  @$core.pragma('dart2js:noInline')
  static InitStorageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitStorageRequest>(create);
  static InitStorageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get walletAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set walletAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get encryptedSecretKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set encryptedSecretKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEncryptedSecretKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearEncryptedSecretKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get walletProofSignature => $_getSZ(3);
  @$pb.TagNumber(4)
  set walletProofSignature($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWalletProofSignature() => $_has(3);
  @$pb.TagNumber(4)
  void clearWalletProofSignature() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get walletProofMessage => $_getSZ(4);
  @$pb.TagNumber(5)
  set walletProofMessage($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWalletProofMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearWalletProofMessage() => clearField(5);
}

class InitStorageResponse extends $pb.GeneratedMessage {
  factory InitStorageResponse() => create();
  InitStorageResponse._() : super();
  factory InitStorageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitStorageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitStorageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitStorageResponse clone() => InitStorageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitStorageResponse copyWith(void Function(InitStorageResponse) updates) => super.copyWith((message) => updates(message as InitStorageResponse)) as InitStorageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitStorageResponse create() => InitStorageResponse._();
  InitStorageResponse createEmptyInstance() => create();
  static $pb.PbList<InitStorageResponse> createRepeated() => $pb.PbList<InitStorageResponse>();
  @$core.pragma('dart2js:noInline')
  static InitStorageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitStorageResponse>(create);
  static InitStorageResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
