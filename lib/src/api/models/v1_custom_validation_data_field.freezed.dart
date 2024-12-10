// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_custom_validation_data_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1CustomValidationDataField _$V1CustomValidationDataFieldFromJson(
    Map<String, dynamic> json) {
  return _V1CustomValidationDataField.fromJson(json);
}

/// @nodoc
mixin _$V1CustomValidationDataField {
  String get id => throw _privateConstructorUsedError;
  String get validatorPublicKey => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get encryptedValue => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this V1CustomValidationDataField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1CustomValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1CustomValidationDataFieldCopyWith<V1CustomValidationDataField>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1CustomValidationDataFieldCopyWith<$Res> {
  factory $V1CustomValidationDataFieldCopyWith(
          V1CustomValidationDataField value,
          $Res Function(V1CustomValidationDataField) then) =
      _$V1CustomValidationDataFieldCopyWithImpl<$Res,
          V1CustomValidationDataField>;
  @useResult
  $Res call(
      {String id,
      String validatorPublicKey,
      String type,
      String encryptedValue,
      String hash,
      String signature,
      DateTime createdAt});
}

/// @nodoc
class _$V1CustomValidationDataFieldCopyWithImpl<$Res,
        $Val extends V1CustomValidationDataField>
    implements $V1CustomValidationDataFieldCopyWith<$Res> {
  _$V1CustomValidationDataFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1CustomValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? validatorPublicKey = null,
    Object? type = null,
    Object? encryptedValue = null,
    Object? hash = null,
    Object? signature = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      validatorPublicKey: null == validatorPublicKey
          ? _value.validatorPublicKey
          : validatorPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedValue: null == encryptedValue
          ? _value.encryptedValue
          : encryptedValue // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1CustomValidationDataFieldImplCopyWith<$Res>
    implements $V1CustomValidationDataFieldCopyWith<$Res> {
  factory _$$V1CustomValidationDataFieldImplCopyWith(
          _$V1CustomValidationDataFieldImpl value,
          $Res Function(_$V1CustomValidationDataFieldImpl) then) =
      __$$V1CustomValidationDataFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String validatorPublicKey,
      String type,
      String encryptedValue,
      String hash,
      String signature,
      DateTime createdAt});
}

/// @nodoc
class __$$V1CustomValidationDataFieldImplCopyWithImpl<$Res>
    extends _$V1CustomValidationDataFieldCopyWithImpl<$Res,
        _$V1CustomValidationDataFieldImpl>
    implements _$$V1CustomValidationDataFieldImplCopyWith<$Res> {
  __$$V1CustomValidationDataFieldImplCopyWithImpl(
      _$V1CustomValidationDataFieldImpl _value,
      $Res Function(_$V1CustomValidationDataFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1CustomValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? validatorPublicKey = null,
    Object? type = null,
    Object? encryptedValue = null,
    Object? hash = null,
    Object? signature = null,
    Object? createdAt = null,
  }) {
    return _then(_$V1CustomValidationDataFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      validatorPublicKey: null == validatorPublicKey
          ? _value.validatorPublicKey
          : validatorPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedValue: null == encryptedValue
          ? _value.encryptedValue
          : encryptedValue // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1CustomValidationDataFieldImpl
    implements _V1CustomValidationDataField {
  const _$V1CustomValidationDataFieldImpl(
      {required this.id,
      required this.validatorPublicKey,
      required this.type,
      required this.encryptedValue,
      required this.hash,
      required this.signature,
      required this.createdAt});

  factory _$V1CustomValidationDataFieldImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1CustomValidationDataFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String validatorPublicKey;
  @override
  final String type;
  @override
  final String encryptedValue;
  @override
  final String hash;
  @override
  final String signature;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'V1CustomValidationDataField(id: $id, validatorPublicKey: $validatorPublicKey, type: $type, encryptedValue: $encryptedValue, hash: $hash, signature: $signature, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1CustomValidationDataFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.validatorPublicKey, validatorPublicKey) ||
                other.validatorPublicKey == validatorPublicKey) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.encryptedValue, encryptedValue) ||
                other.encryptedValue == encryptedValue) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, validatorPublicKey, type,
      encryptedValue, hash, signature, createdAt);

  /// Create a copy of V1CustomValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1CustomValidationDataFieldImplCopyWith<_$V1CustomValidationDataFieldImpl>
      get copyWith => __$$V1CustomValidationDataFieldImplCopyWithImpl<
          _$V1CustomValidationDataFieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1CustomValidationDataFieldImplToJson(
      this,
    );
  }
}

abstract class _V1CustomValidationDataField
    implements V1CustomValidationDataField {
  const factory _V1CustomValidationDataField(
      {required final String id,
      required final String validatorPublicKey,
      required final String type,
      required final String encryptedValue,
      required final String hash,
      required final String signature,
      required final DateTime createdAt}) = _$V1CustomValidationDataFieldImpl;

  factory _V1CustomValidationDataField.fromJson(Map<String, dynamic> json) =
      _$V1CustomValidationDataFieldImpl.fromJson;

  @override
  String get id;
  @override
  String get validatorPublicKey;
  @override
  String get type;
  @override
  String get encryptedValue;
  @override
  String get hash;
  @override
  String get signature;
  @override
  DateTime get createdAt;

  /// Create a copy of V1CustomValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1CustomValidationDataFieldImplCopyWith<_$V1CustomValidationDataFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}
