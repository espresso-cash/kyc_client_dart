// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_user_data_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1UserDataField _$V1UserDataFieldFromJson(Map<String, dynamic> json) {
  return _V1UserDataField.fromJson(json);
}

/// @nodoc
mixin _$V1UserDataField {
  String get id => throw _privateConstructorUsedError;
  V1DataType get type => throw _privateConstructorUsedError;
  String get encryptedValue => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this V1UserDataField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1UserDataField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1UserDataFieldCopyWith<V1UserDataField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1UserDataFieldCopyWith<$Res> {
  factory $V1UserDataFieldCopyWith(
          V1UserDataField value, $Res Function(V1UserDataField) then) =
      _$V1UserDataFieldCopyWithImpl<$Res, V1UserDataField>;
  @useResult
  $Res call(
      {String id,
      V1DataType type,
      String encryptedValue,
      String hash,
      String signature,
      DateTime createdAt});
}

/// @nodoc
class _$V1UserDataFieldCopyWithImpl<$Res, $Val extends V1UserDataField>
    implements $V1UserDataFieldCopyWith<$Res> {
  _$V1UserDataFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1UserDataField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as V1DataType,
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
abstract class _$$V1UserDataFieldImplCopyWith<$Res>
    implements $V1UserDataFieldCopyWith<$Res> {
  factory _$$V1UserDataFieldImplCopyWith(_$V1UserDataFieldImpl value,
          $Res Function(_$V1UserDataFieldImpl) then) =
      __$$V1UserDataFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      V1DataType type,
      String encryptedValue,
      String hash,
      String signature,
      DateTime createdAt});
}

/// @nodoc
class __$$V1UserDataFieldImplCopyWithImpl<$Res>
    extends _$V1UserDataFieldCopyWithImpl<$Res, _$V1UserDataFieldImpl>
    implements _$$V1UserDataFieldImplCopyWith<$Res> {
  __$$V1UserDataFieldImplCopyWithImpl(
      _$V1UserDataFieldImpl _value, $Res Function(_$V1UserDataFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1UserDataField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? encryptedValue = null,
    Object? hash = null,
    Object? signature = null,
    Object? createdAt = null,
  }) {
    return _then(_$V1UserDataFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as V1DataType,
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
class _$V1UserDataFieldImpl implements _V1UserDataField {
  const _$V1UserDataFieldImpl(
      {required this.id,
      required this.type,
      required this.encryptedValue,
      required this.hash,
      required this.signature,
      required this.createdAt});

  factory _$V1UserDataFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1UserDataFieldImplFromJson(json);

  @override
  final String id;
  @override
  final V1DataType type;
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
    return 'V1UserDataField(id: $id, type: $type, encryptedValue: $encryptedValue, hash: $hash, signature: $signature, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1UserDataFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(
      runtimeType, id, type, encryptedValue, hash, signature, createdAt);

  /// Create a copy of V1UserDataField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1UserDataFieldImplCopyWith<_$V1UserDataFieldImpl> get copyWith =>
      __$$V1UserDataFieldImplCopyWithImpl<_$V1UserDataFieldImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1UserDataFieldImplToJson(
      this,
    );
  }
}

abstract class _V1UserDataField implements V1UserDataField {
  const factory _V1UserDataField(
      {required final String id,
      required final V1DataType type,
      required final String encryptedValue,
      required final String hash,
      required final String signature,
      required final DateTime createdAt}) = _$V1UserDataFieldImpl;

  factory _V1UserDataField.fromJson(Map<String, dynamic> json) =
      _$V1UserDataFieldImpl.fromJson;

  @override
  String get id;
  @override
  V1DataType get type;
  @override
  String get encryptedValue;
  @override
  String get hash;
  @override
  String get signature;
  @override
  DateTime get createdAt;

  /// Create a copy of V1UserDataField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1UserDataFieldImplCopyWith<_$V1UserDataFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
