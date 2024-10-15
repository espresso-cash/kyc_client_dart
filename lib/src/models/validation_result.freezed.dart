// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValidationResult {
  String get dataId => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationResultCopyWith<ValidationResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationResultCopyWith<$Res> {
  factory $ValidationResultCopyWith(
          ValidationResult value, $Res Function(ValidationResult) then) =
      _$ValidationResultCopyWithImpl<$Res, ValidationResult>;
  @useResult
  $Res call({String dataId, String value});
}

/// @nodoc
class _$ValidationResultCopyWithImpl<$Res, $Val extends ValidationResult>
    implements $ValidationResultCopyWith<$Res> {
  _$ValidationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HashValidationResultImplCopyWith<$Res>
    implements $ValidationResultCopyWith<$Res> {
  factory _$$HashValidationResultImplCopyWith(_$HashValidationResultImpl value,
          $Res Function(_$HashValidationResultImpl) then) =
      __$$HashValidationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dataId, String value});
}

/// @nodoc
class __$$HashValidationResultImplCopyWithImpl<$Res>
    extends _$ValidationResultCopyWithImpl<$Res, _$HashValidationResultImpl>
    implements _$$HashValidationResultImplCopyWith<$Res> {
  __$$HashValidationResultImplCopyWithImpl(_$HashValidationResultImpl _value,
      $Res Function(_$HashValidationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
    Object? value = null,
  }) {
    return _then(_$HashValidationResultImpl(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HashValidationResultImpl implements HashValidationResult {
  const _$HashValidationResultImpl({required this.dataId, required this.value});

  @override
  final String dataId;
  @override
  final String value;

  @override
  String toString() {
    return 'ValidationResult.hash(dataId: $dataId, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HashValidationResultImpl &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataId, value);

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HashValidationResultImplCopyWith<_$HashValidationResultImpl>
      get copyWith =>
          __$$HashValidationResultImplCopyWithImpl<_$HashValidationResultImpl>(
              this, _$identity);
}

abstract class HashValidationResult implements ValidationResult {
  const factory HashValidationResult(
      {required final String dataId,
      required final String value}) = _$HashValidationResultImpl;

  @override
  String get dataId;
  @override
  String get value;

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HashValidationResultImplCopyWith<_$HashValidationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomValidationResultImplCopyWith<$Res>
    implements $ValidationResultCopyWith<$Res> {
  factory _$$CustomValidationResultImplCopyWith(
          _$CustomValidationResultImpl value,
          $Res Function(_$CustomValidationResultImpl) then) =
      __$$CustomValidationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dataId, String type, String value});
}

/// @nodoc
class __$$CustomValidationResultImplCopyWithImpl<$Res>
    extends _$ValidationResultCopyWithImpl<$Res, _$CustomValidationResultImpl>
    implements _$$CustomValidationResultImplCopyWith<$Res> {
  __$$CustomValidationResultImplCopyWithImpl(
      _$CustomValidationResultImpl _value,
      $Res Function(_$CustomValidationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$CustomValidationResultImpl(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CustomValidationResultImpl implements CustomValidationResult {
  const _$CustomValidationResultImpl(
      {this.dataId = '', required this.type, required this.value});

  @override
  @JsonKey()
  final String dataId;
  @override
  final String type;
  @override
  final String value;

  @override
  String toString() {
    return 'ValidationResult.custom(dataId: $dataId, type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomValidationResultImpl &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dataId, type, value);

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomValidationResultImplCopyWith<_$CustomValidationResultImpl>
      get copyWith => __$$CustomValidationResultImplCopyWithImpl<
          _$CustomValidationResultImpl>(this, _$identity);
}

abstract class CustomValidationResult implements ValidationResult {
  const factory CustomValidationResult(
      {final String dataId,
      required final String type,
      required final String value}) = _$CustomValidationResultImpl;

  @override
  String get dataId;
  String get type;
  @override
  String get value;

  /// Create a copy of ValidationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomValidationResultImplCopyWith<_$CustomValidationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
