//
//  Generated code. Do not modify.
//  source: data.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'data.pbenum.dart';
import 'google/protobuf/timestamp.pb.dart' as $0;

export 'data.pbenum.dart';

enum WrappedData_Data {
  email, 
  name, 
  birthDate, 
  phone, 
  document, 
  bankInfo, 
  selfieImage, 
  notSet
}

class WrappedData extends $pb.GeneratedMessage {
  factory WrappedData({
    $core.String? email,
    Name? name,
    $0.Timestamp? birthDate,
    $core.String? phone,
    Document? document,
    BankInfo? bankInfo,
    $core.List<$core.int>? selfieImage,
  }) {
    final $result = create();
    if (email != null) {
      $result.email = email;
    }
    if (name != null) {
      $result.name = name;
    }
    if (birthDate != null) {
      $result.birthDate = birthDate;
    }
    if (phone != null) {
      $result.phone = phone;
    }
    if (document != null) {
      $result.document = document;
    }
    if (bankInfo != null) {
      $result.bankInfo = bankInfo;
    }
    if (selfieImage != null) {
      $result.selfieImage = selfieImage;
    }
    return $result;
  }
  WrappedData._() : super();
  factory WrappedData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WrappedData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WrappedData_Data> _WrappedData_DataByTag = {
    1 : WrappedData_Data.email,
    2 : WrappedData_Data.name,
    3 : WrappedData_Data.birthDate,
    4 : WrappedData_Data.phone,
    5 : WrappedData_Data.document,
    6 : WrappedData_Data.bankInfo,
    7 : WrappedData_Data.selfieImage,
    0 : WrappedData_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WrappedData', package: const $pb.PackageName(_omitMessageNames ? '' : 'espressocash.data.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7])
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOM<Name>(2, _omitFieldNames ? '' : 'name', subBuilder: Name.create)
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'birthDate', subBuilder: $0.Timestamp.create)
    ..aOS(4, _omitFieldNames ? '' : 'phone')
    ..aOM<Document>(5, _omitFieldNames ? '' : 'document', subBuilder: Document.create)
    ..aOM<BankInfo>(6, _omitFieldNames ? '' : 'bankInfo', subBuilder: BankInfo.create)
    ..a<$core.List<$core.int>>(7, _omitFieldNames ? '' : 'selfieImage', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WrappedData clone() => WrappedData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WrappedData copyWith(void Function(WrappedData) updates) => super.copyWith((message) => updates(message as WrappedData)) as WrappedData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrappedData create() => WrappedData._();
  WrappedData createEmptyInstance() => create();
  static $pb.PbList<WrappedData> createRepeated() => $pb.PbList<WrappedData>();
  @$core.pragma('dart2js:noInline')
  static WrappedData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WrappedData>(create);
  static WrappedData? _defaultInstance;

  WrappedData_Data whichData() => _WrappedData_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  Name get name => $_getN(1);
  @$pb.TagNumber(2)
  set name(Name v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
  @$pb.TagNumber(2)
  Name ensureName() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.Timestamp get birthDate => $_getN(2);
  @$pb.TagNumber(3)
  set birthDate($0.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasBirthDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearBirthDate() => clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureBirthDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get phone => $_getSZ(3);
  @$pb.TagNumber(4)
  set phone($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPhone() => $_has(3);
  @$pb.TagNumber(4)
  void clearPhone() => clearField(4);

  @$pb.TagNumber(5)
  Document get document => $_getN(4);
  @$pb.TagNumber(5)
  set document(Document v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDocument() => $_has(4);
  @$pb.TagNumber(5)
  void clearDocument() => clearField(5);
  @$pb.TagNumber(5)
  Document ensureDocument() => $_ensure(4);

  @$pb.TagNumber(6)
  BankInfo get bankInfo => $_getN(5);
  @$pb.TagNumber(6)
  set bankInfo(BankInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasBankInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearBankInfo() => clearField(6);
  @$pb.TagNumber(6)
  BankInfo ensureBankInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<$core.int> get selfieImage => $_getN(6);
  @$pb.TagNumber(7)
  set selfieImage($core.List<$core.int> v) { $_setBytes(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSelfieImage() => $_has(6);
  @$pb.TagNumber(7)
  void clearSelfieImage() => clearField(7);
}

class Name extends $pb.GeneratedMessage {
  factory Name({
    $core.String? firstName,
    $core.String? lastName,
  }) {
    final $result = create();
    if (firstName != null) {
      $result.firstName = firstName;
    }
    if (lastName != null) {
      $result.lastName = lastName;
    }
    return $result;
  }
  Name._() : super();
  factory Name.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Name.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Name', package: const $pb.PackageName(_omitMessageNames ? '' : 'espressocash.data.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'firstName')
    ..aOS(2, _omitFieldNames ? '' : 'lastName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Name clone() => Name()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Name copyWith(void Function(Name) updates) => super.copyWith((message) => updates(message as Name)) as Name;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Name create() => Name._();
  Name createEmptyInstance() => create();
  static $pb.PbList<Name> createRepeated() => $pb.PbList<Name>();
  @$core.pragma('dart2js:noInline')
  static Name getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Name>(create);
  static Name? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => clearField(2);
}

class Document extends $pb.GeneratedMessage {
  factory Document({
    DocumentType? type,
    $core.String? number,
    $core.String? countryCode,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (number != null) {
      $result.number = number;
    }
    if (countryCode != null) {
      $result.countryCode = countryCode;
    }
    return $result;
  }
  Document._() : super();
  factory Document.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Document.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Document', package: const $pb.PackageName(_omitMessageNames ? '' : 'espressocash.data.v1'), createEmptyInstance: create)
    ..e<DocumentType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: DocumentType.DOCUMENT_TYPE_UNSPECIFIED, valueOf: DocumentType.valueOf, enumValues: DocumentType.values)
    ..aOS(2, _omitFieldNames ? '' : 'number')
    ..aOS(3, _omitFieldNames ? '' : 'countryCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Document clone() => Document()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Document copyWith(void Function(Document) updates) => super.copyWith((message) => updates(message as Document)) as Document;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Document create() => Document._();
  Document createEmptyInstance() => create();
  static $pb.PbList<Document> createRepeated() => $pb.PbList<Document>();
  @$core.pragma('dart2js:noInline')
  static Document getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Document>(create);
  static Document? _defaultInstance;

  @$pb.TagNumber(1)
  DocumentType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(DocumentType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get number => $_getSZ(1);
  @$pb.TagNumber(2)
  set number($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get countryCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set countryCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCountryCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountryCode() => clearField(3);
}

class BankInfo extends $pb.GeneratedMessage {
  factory BankInfo({
    $core.String? accountNumber,
    $core.String? bankCode,
    $core.String? bankName,
  }) {
    final $result = create();
    if (accountNumber != null) {
      $result.accountNumber = accountNumber;
    }
    if (bankCode != null) {
      $result.bankCode = bankCode;
    }
    if (bankName != null) {
      $result.bankName = bankName;
    }
    return $result;
  }
  BankInfo._() : super();
  factory BankInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BankInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'espressocash.data.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountNumber')
    ..aOS(2, _omitFieldNames ? '' : 'bankCode')
    ..aOS(3, _omitFieldNames ? '' : 'bankName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankInfo clone() => BankInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankInfo copyWith(void Function(BankInfo) updates) => super.copyWith((message) => updates(message as BankInfo)) as BankInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BankInfo create() => BankInfo._();
  BankInfo createEmptyInstance() => create();
  static $pb.PbList<BankInfo> createRepeated() => $pb.PbList<BankInfo>();
  @$core.pragma('dart2js:noInline')
  static BankInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankInfo>(create);
  static BankInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get bankCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set bankCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBankCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearBankCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get bankName => $_getSZ(2);
  @$pb.TagNumber(3)
  set bankName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBankName() => $_has(2);
  @$pb.TagNumber(3)
  void clearBankName() => clearField(3);
}

enum WrappedValidation_Data {
  hash, 
  custom, 
  notSet
}

class WrappedValidation extends $pb.GeneratedMessage {
  factory WrappedValidation({
    HashValidation? hash,
    CustomValidation? custom,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (custom != null) {
      $result.custom = custom;
    }
    return $result;
  }
  WrappedValidation._() : super();
  factory WrappedValidation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WrappedValidation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WrappedValidation_Data> _WrappedValidation_DataByTag = {
    1 : WrappedValidation_Data.hash,
    2 : WrappedValidation_Data.custom,
    0 : WrappedValidation_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WrappedValidation', package: const $pb.PackageName(_omitMessageNames ? '' : 'espressocash.data.v1'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<HashValidation>(1, _omitFieldNames ? '' : 'hash', subBuilder: HashValidation.create)
    ..aOM<CustomValidation>(2, _omitFieldNames ? '' : 'custom', subBuilder: CustomValidation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WrappedValidation clone() => WrappedValidation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WrappedValidation copyWith(void Function(WrappedValidation) updates) => super.copyWith((message) => updates(message as WrappedValidation)) as WrappedValidation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WrappedValidation create() => WrappedValidation._();
  WrappedValidation createEmptyInstance() => create();
  static $pb.PbList<WrappedValidation> createRepeated() => $pb.PbList<WrappedValidation>();
  @$core.pragma('dart2js:noInline')
  static WrappedValidation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WrappedValidation>(create);
  static WrappedValidation? _defaultInstance;

  WrappedValidation_Data whichData() => _WrappedValidation_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  HashValidation get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash(HashValidation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);
  @$pb.TagNumber(1)
  HashValidation ensureHash() => $_ensure(0);

  @$pb.TagNumber(2)
  CustomValidation get custom => $_getN(1);
  @$pb.TagNumber(2)
  set custom(CustomValidation v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCustom() => $_has(1);
  @$pb.TagNumber(2)
  void clearCustom() => clearField(2);
  @$pb.TagNumber(2)
  CustomValidation ensureCustom() => $_ensure(1);
}

class HashValidation extends $pb.GeneratedMessage {
  factory HashValidation({
    $core.String? hash,
    ValidationStatus? status,
  }) {
    final $result = create();
    if (hash != null) {
      $result.hash = hash;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  HashValidation._() : super();
  factory HashValidation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HashValidation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HashValidation', package: const $pb.PackageName(_omitMessageNames ? '' : 'espressocash.data.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'hash')
    ..e<ValidationStatus>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: ValidationStatus.VALIDATION_STATUS_UNSPECIFIED, valueOf: ValidationStatus.valueOf, enumValues: ValidationStatus.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HashValidation clone() => HashValidation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HashValidation copyWith(void Function(HashValidation) updates) => super.copyWith((message) => updates(message as HashValidation)) as HashValidation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HashValidation create() => HashValidation._();
  HashValidation createEmptyInstance() => create();
  static $pb.PbList<HashValidation> createRepeated() => $pb.PbList<HashValidation>();
  @$core.pragma('dart2js:noInline')
  static HashValidation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HashValidation>(create);
  static HashValidation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get hash => $_getSZ(0);
  @$pb.TagNumber(1)
  set hash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  ValidationStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(ValidationStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class CustomValidation extends $pb.GeneratedMessage {
  factory CustomValidation({
    $core.String? type,
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  CustomValidation._() : super();
  factory CustomValidation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomValidation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomValidation', package: const $pb.PackageName(_omitMessageNames ? '' : 'espressocash.data.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomValidation clone() => CustomValidation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomValidation copyWith(void Function(CustomValidation) updates) => super.copyWith((message) => updates(message as CustomValidation)) as CustomValidation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomValidation create() => CustomValidation._();
  CustomValidation createEmptyInstance() => create();
  static $pb.PbList<CustomValidation> createRepeated() => $pb.PbList<CustomValidation>();
  @$core.pragma('dart2js:noInline')
  static CustomValidation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomValidation>(create);
  static CustomValidation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);
  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
