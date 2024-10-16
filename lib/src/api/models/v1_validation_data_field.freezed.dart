// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_validation_data_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1ValidationDataField _$V1ValidationDataFieldFromJson(
    Map<String, dynamic> json) {
  return _V1ValidationDataField.fromJson(json);
}

/// @nodoc
mixin _$V1ValidationDataField {
  String get validatorPublicKey => throw _privateConstructorUsedError;
  String get encryptedData => throw _privateConstructorUsedError;
  String get dataId => throw _privateConstructorUsedError;

  /// Serializes this V1ValidationDataField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1ValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1ValidationDataFieldCopyWith<V1ValidationDataField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1ValidationDataFieldCopyWith<$Res> {
  factory $V1ValidationDataFieldCopyWith(V1ValidationDataField value,
          $Res Function(V1ValidationDataField) then) =
      _$V1ValidationDataFieldCopyWithImpl<$Res, V1ValidationDataField>;
  @useResult
  $Res call({String validatorPublicKey, String encryptedData, String dataId});
}

/// @nodoc
class _$V1ValidationDataFieldCopyWithImpl<$Res,
        $Val extends V1ValidationDataField>
    implements $V1ValidationDataFieldCopyWith<$Res> {
  _$V1ValidationDataFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1ValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validatorPublicKey = null,
    Object? encryptedData = null,
    Object? dataId = null,
  }) {
    return _then(_value.copyWith(
      validatorPublicKey: null == validatorPublicKey
          ? _value.validatorPublicKey
          : validatorPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedData: null == encryptedData
          ? _value.encryptedData
          : encryptedData // ignore: cast_nullable_to_non_nullable
              as String,
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1ValidationDataFieldImplCopyWith<$Res>
    implements $V1ValidationDataFieldCopyWith<$Res> {
  factory _$$V1ValidationDataFieldImplCopyWith(
          _$V1ValidationDataFieldImpl value,
          $Res Function(_$V1ValidationDataFieldImpl) then) =
      __$$V1ValidationDataFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String validatorPublicKey, String encryptedData, String dataId});
}

/// @nodoc
class __$$V1ValidationDataFieldImplCopyWithImpl<$Res>
    extends _$V1ValidationDataFieldCopyWithImpl<$Res,
        _$V1ValidationDataFieldImpl>
    implements _$$V1ValidationDataFieldImplCopyWith<$Res> {
  __$$V1ValidationDataFieldImplCopyWithImpl(_$V1ValidationDataFieldImpl _value,
      $Res Function(_$V1ValidationDataFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1ValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validatorPublicKey = null,
    Object? encryptedData = null,
    Object? dataId = null,
  }) {
    return _then(_$V1ValidationDataFieldImpl(
      validatorPublicKey: null == validatorPublicKey
          ? _value.validatorPublicKey
          : validatorPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedData: null == encryptedData
          ? _value.encryptedData
          : encryptedData // ignore: cast_nullable_to_non_nullable
              as String,
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1ValidationDataFieldImpl implements _V1ValidationDataField {
  const _$V1ValidationDataFieldImpl(
      {required this.validatorPublicKey,
      required this.encryptedData,
      required this.dataId});

  factory _$V1ValidationDataFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1ValidationDataFieldImplFromJson(json);

  @override
  final String validatorPublicKey;
  @override
  final String encryptedData;
  @override
  final String dataId;

  @override
  String toString() {
    return 'V1ValidationDataField(validatorPublicKey: $validatorPublicKey, encryptedData: $encryptedData, dataId: $dataId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1ValidationDataFieldImpl &&
            (identical(other.validatorPublicKey, validatorPublicKey) ||
                other.validatorPublicKey == validatorPublicKey) &&
            (identical(other.encryptedData, encryptedData) ||
                other.encryptedData == encryptedData) &&
            (identical(other.dataId, dataId) || other.dataId == dataId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, validatorPublicKey, encryptedData, dataId);

  /// Create a copy of V1ValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1ValidationDataFieldImplCopyWith<_$V1ValidationDataFieldImpl>
      get copyWith => __$$V1ValidationDataFieldImplCopyWithImpl<
          _$V1ValidationDataFieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1ValidationDataFieldImplToJson(
      this,
    );
  }
}

abstract class _V1ValidationDataField implements V1ValidationDataField {
  const factory _V1ValidationDataField(
      {required final String validatorPublicKey,
      required final String encryptedData,
      required final String dataId}) = _$V1ValidationDataFieldImpl;

  factory _V1ValidationDataField.fromJson(Map<String, dynamic> json) =
      _$V1ValidationDataFieldImpl.fromJson;

  @override
  String get validatorPublicKey;
  @override
  String get encryptedData;
  @override
  String get dataId;

  /// Create a copy of V1ValidationDataField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1ValidationDataFieldImplCopyWith<_$V1ValidationDataFieldImpl>
      get copyWith => throw _privateConstructorUsedError;
}
