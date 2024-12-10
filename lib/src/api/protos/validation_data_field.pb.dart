//
//  Generated code. Do not modify.
//  source: validation_data_field.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $0;
import 'validation_status.pbenum.dart' as $2;

class ValidationDataField extends $pb.GeneratedMessage {
  factory ValidationDataField({
    $core.String? id,
    $core.String? validatorPublicKey,
    $core.String? dataId,
    $2.ValidationStatus? status,
    $core.String? hash,
    $core.String? signature,
    $0.Timestamp? validatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (validatorPublicKey != null) {
      $result.validatorPublicKey = validatorPublicKey;
    }
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
    if (validatedAt != null) {
      $result.validatedAt = validatedAt;
    }
    return $result;
  }
  ValidationDataField._() : super();
  factory ValidationDataField.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidationDataField.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidationDataField', package: const $pb.PackageName(_omitMessageNames ? '' : 'brij.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'validatorPublicKey')
    ..aOS(3, _omitFieldNames ? '' : 'dataId')
    ..e<$2.ValidationStatus>(4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: $2.ValidationStatus.VALIDATION_STATUS_UNSPECIFIED, valueOf: $2.ValidationStatus.valueOf, enumValues: $2.ValidationStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'hash')
    ..aOS(6, _omitFieldNames ? '' : 'signature')
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'validatedAt', subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidationDataField clone() => ValidationDataField()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidationDataField copyWith(void Function(ValidationDataField) updates) => super.copyWith((message) => updates(message as ValidationDataField)) as ValidationDataField;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidationDataField create() => ValidationDataField._();
  ValidationDataField createEmptyInstance() => create();
  static $pb.PbList<ValidationDataField> createRepeated() => $pb.PbList<ValidationDataField>();
  @$core.pragma('dart2js:noInline')
  static ValidationDataField getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidationDataField>(create);
  static ValidationDataField? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get validatorPublicKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set validatorPublicKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValidatorPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidatorPublicKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dataId => $_getSZ(2);
  @$pb.TagNumber(3)
  set dataId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataId() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataId() => clearField(3);

  @$pb.TagNumber(4)
  $2.ValidationStatus get status => $_getN(3);
  @$pb.TagNumber(4)
  set status($2.ValidationStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get hash => $_getSZ(4);
  @$pb.TagNumber(5)
  set hash($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHash() => $_has(4);
  @$pb.TagNumber(5)
  void clearHash() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get signature => $_getSZ(5);
  @$pb.TagNumber(6)
  set signature($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSignature() => $_has(5);
  @$pb.TagNumber(6)
  void clearSignature() => clearField(6);

  @$pb.TagNumber(7)
  $0.Timestamp get validatedAt => $_getN(6);
  @$pb.TagNumber(7)
  set validatedAt($0.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasValidatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearValidatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureValidatedAt() => $_ensure(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
