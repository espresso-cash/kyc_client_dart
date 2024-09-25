// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_validation_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1ValidationData _$V1ValidationDataFromJson(Map<String, dynamic> json) {
  return _V1ValidationData.fromJson(json);
}

/// @nodoc
mixin _$V1ValidationData {
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get kycSmileId => throw _privateConstructorUsedError;

  /// Serializes this V1ValidationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1ValidationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1ValidationDataCopyWith<V1ValidationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1ValidationDataCopyWith<$Res> {
  factory $V1ValidationDataCopyWith(
          V1ValidationData value, $Res Function(V1ValidationData) then) =
      _$V1ValidationDataCopyWithImpl<$Res, V1ValidationData>;
  @useResult
  $Res call({String? email, String? phone, String? kycSmileId});
}

/// @nodoc
class _$V1ValidationDataCopyWithImpl<$Res, $Val extends V1ValidationData>
    implements $V1ValidationDataCopyWith<$Res> {
  _$V1ValidationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1ValidationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? kycSmileId = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      kycSmileId: freezed == kycSmileId
          ? _value.kycSmileId
          : kycSmileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1ValidationDataImplCopyWith<$Res>
    implements $V1ValidationDataCopyWith<$Res> {
  factory _$$V1ValidationDataImplCopyWith(_$V1ValidationDataImpl value,
          $Res Function(_$V1ValidationDataImpl) then) =
      __$$V1ValidationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? phone, String? kycSmileId});
}

/// @nodoc
class __$$V1ValidationDataImplCopyWithImpl<$Res>
    extends _$V1ValidationDataCopyWithImpl<$Res, _$V1ValidationDataImpl>
    implements _$$V1ValidationDataImplCopyWith<$Res> {
  __$$V1ValidationDataImplCopyWithImpl(_$V1ValidationDataImpl _value,
      $Res Function(_$V1ValidationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1ValidationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? phone = freezed,
    Object? kycSmileId = freezed,
  }) {
    return _then(_$V1ValidationDataImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      kycSmileId: freezed == kycSmileId
          ? _value.kycSmileId
          : kycSmileId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1ValidationDataImpl implements _V1ValidationData {
  const _$V1ValidationDataImpl({this.email, this.phone, this.kycSmileId});

  factory _$V1ValidationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1ValidationDataImplFromJson(json);

  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? kycSmileId;

  @override
  String toString() {
    return 'V1ValidationData(email: $email, phone: $phone, kycSmileId: $kycSmileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1ValidationDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.kycSmileId, kycSmileId) ||
                other.kycSmileId == kycSmileId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, phone, kycSmileId);

  /// Create a copy of V1ValidationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1ValidationDataImplCopyWith<_$V1ValidationDataImpl> get copyWith =>
      __$$V1ValidationDataImplCopyWithImpl<_$V1ValidationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1ValidationDataImplToJson(
      this,
    );
  }
}

abstract class _V1ValidationData implements V1ValidationData {
  const factory _V1ValidationData(
      {final String? email,
      final String? phone,
      final String? kycSmileId}) = _$V1ValidationDataImpl;

  factory _V1ValidationData.fromJson(Map<String, dynamic> json) =
      _$V1ValidationDataImpl.fromJson;

  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get kycSmileId;

  /// Create a copy of V1ValidationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1ValidationDataImplCopyWith<_$V1ValidationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
