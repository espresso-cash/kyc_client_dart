// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_validate_phone_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1ValidatePhoneRequest _$V1ValidatePhoneRequestFromJson(
    Map<String, dynamic> json) {
  return _V1ValidatePhoneRequest.fromJson(json);
}

/// @nodoc
mixin _$V1ValidatePhoneRequest {
  String get code => throw _privateConstructorUsedError;
  String get dataId => throw _privateConstructorUsedError;

  /// Serializes this V1ValidatePhoneRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1ValidatePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1ValidatePhoneRequestCopyWith<V1ValidatePhoneRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1ValidatePhoneRequestCopyWith<$Res> {
  factory $V1ValidatePhoneRequestCopyWith(V1ValidatePhoneRequest value,
          $Res Function(V1ValidatePhoneRequest) then) =
      _$V1ValidatePhoneRequestCopyWithImpl<$Res, V1ValidatePhoneRequest>;
  @useResult
  $Res call({String code, String dataId});
}

/// @nodoc
class _$V1ValidatePhoneRequestCopyWithImpl<$Res,
        $Val extends V1ValidatePhoneRequest>
    implements $V1ValidatePhoneRequestCopyWith<$Res> {
  _$V1ValidatePhoneRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1ValidatePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? dataId = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1ValidatePhoneRequestImplCopyWith<$Res>
    implements $V1ValidatePhoneRequestCopyWith<$Res> {
  factory _$$V1ValidatePhoneRequestImplCopyWith(
          _$V1ValidatePhoneRequestImpl value,
          $Res Function(_$V1ValidatePhoneRequestImpl) then) =
      __$$V1ValidatePhoneRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String dataId});
}

/// @nodoc
class __$$V1ValidatePhoneRequestImplCopyWithImpl<$Res>
    extends _$V1ValidatePhoneRequestCopyWithImpl<$Res,
        _$V1ValidatePhoneRequestImpl>
    implements _$$V1ValidatePhoneRequestImplCopyWith<$Res> {
  __$$V1ValidatePhoneRequestImplCopyWithImpl(
      _$V1ValidatePhoneRequestImpl _value,
      $Res Function(_$V1ValidatePhoneRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1ValidatePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? dataId = null,
  }) {
    return _then(_$V1ValidatePhoneRequestImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
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
class _$V1ValidatePhoneRequestImpl implements _V1ValidatePhoneRequest {
  const _$V1ValidatePhoneRequestImpl(
      {required this.code, required this.dataId});

  factory _$V1ValidatePhoneRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1ValidatePhoneRequestImplFromJson(json);

  @override
  final String code;
  @override
  final String dataId;

  @override
  String toString() {
    return 'V1ValidatePhoneRequest(code: $code, dataId: $dataId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1ValidatePhoneRequestImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.dataId, dataId) || other.dataId == dataId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, dataId);

  /// Create a copy of V1ValidatePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1ValidatePhoneRequestImplCopyWith<_$V1ValidatePhoneRequestImpl>
      get copyWith => __$$V1ValidatePhoneRequestImplCopyWithImpl<
          _$V1ValidatePhoneRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1ValidatePhoneRequestImplToJson(
      this,
    );
  }
}

abstract class _V1ValidatePhoneRequest implements V1ValidatePhoneRequest {
  const factory _V1ValidatePhoneRequest(
      {required final String code,
      required final String dataId}) = _$V1ValidatePhoneRequestImpl;

  factory _V1ValidatePhoneRequest.fromJson(Map<String, dynamic> json) =
      _$V1ValidatePhoneRequestImpl.fromJson;

  @override
  String get code;
  @override
  String get dataId;

  /// Create a copy of V1ValidatePhoneRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1ValidatePhoneRequestImplCopyWith<_$V1ValidatePhoneRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
