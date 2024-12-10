// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_user_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetUserDataRequest _$V1GetUserDataRequestFromJson(Map<String, dynamic> json) {
  return _V1GetUserDataRequest.fromJson(json);
}

/// @nodoc
mixin _$V1GetUserDataRequest {
  String get userPublicKey => throw _privateConstructorUsedError;
  bool get includeValues => throw _privateConstructorUsedError;

  /// Serializes this V1GetUserDataRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetUserDataRequestCopyWith<V1GetUserDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetUserDataRequestCopyWith<$Res> {
  factory $V1GetUserDataRequestCopyWith(V1GetUserDataRequest value,
          $Res Function(V1GetUserDataRequest) then) =
      _$V1GetUserDataRequestCopyWithImpl<$Res, V1GetUserDataRequest>;
  @useResult
  $Res call({String userPublicKey, bool includeValues});
}

/// @nodoc
class _$V1GetUserDataRequestCopyWithImpl<$Res,
        $Val extends V1GetUserDataRequest>
    implements $V1GetUserDataRequestCopyWith<$Res> {
  _$V1GetUserDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPublicKey = null,
    Object? includeValues = null,
  }) {
    return _then(_value.copyWith(
      userPublicKey: null == userPublicKey
          ? _value.userPublicKey
          : userPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      includeValues: null == includeValues
          ? _value.includeValues
          : includeValues // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetUserDataRequestImplCopyWith<$Res>
    implements $V1GetUserDataRequestCopyWith<$Res> {
  factory _$$V1GetUserDataRequestImplCopyWith(_$V1GetUserDataRequestImpl value,
          $Res Function(_$V1GetUserDataRequestImpl) then) =
      __$$V1GetUserDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userPublicKey, bool includeValues});
}

/// @nodoc
class __$$V1GetUserDataRequestImplCopyWithImpl<$Res>
    extends _$V1GetUserDataRequestCopyWithImpl<$Res, _$V1GetUserDataRequestImpl>
    implements _$$V1GetUserDataRequestImplCopyWith<$Res> {
  __$$V1GetUserDataRequestImplCopyWithImpl(_$V1GetUserDataRequestImpl _value,
      $Res Function(_$V1GetUserDataRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPublicKey = null,
    Object? includeValues = null,
  }) {
    return _then(_$V1GetUserDataRequestImpl(
      userPublicKey: null == userPublicKey
          ? _value.userPublicKey
          : userPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      includeValues: null == includeValues
          ? _value.includeValues
          : includeValues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetUserDataRequestImpl implements _V1GetUserDataRequest {
  const _$V1GetUserDataRequestImpl(
      {required this.userPublicKey, required this.includeValues});

  factory _$V1GetUserDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetUserDataRequestImplFromJson(json);

  @override
  final String userPublicKey;
  @override
  final bool includeValues;

  @override
  String toString() {
    return 'V1GetUserDataRequest(userPublicKey: $userPublicKey, includeValues: $includeValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetUserDataRequestImpl &&
            (identical(other.userPublicKey, userPublicKey) ||
                other.userPublicKey == userPublicKey) &&
            (identical(other.includeValues, includeValues) ||
                other.includeValues == includeValues));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userPublicKey, includeValues);

  /// Create a copy of V1GetUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetUserDataRequestImplCopyWith<_$V1GetUserDataRequestImpl>
      get copyWith =>
          __$$V1GetUserDataRequestImplCopyWithImpl<_$V1GetUserDataRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetUserDataRequestImplToJson(
      this,
    );
  }
}

abstract class _V1GetUserDataRequest implements V1GetUserDataRequest {
  const factory _V1GetUserDataRequest(
      {required final String userPublicKey,
      required final bool includeValues}) = _$V1GetUserDataRequestImpl;

  factory _V1GetUserDataRequest.fromJson(Map<String, dynamic> json) =
      _$V1GetUserDataRequestImpl.fromJson;

  @override
  String get userPublicKey;
  @override
  bool get includeValues;

  /// Create a copy of V1GetUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetUserDataRequestImplCopyWith<_$V1GetUserDataRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
