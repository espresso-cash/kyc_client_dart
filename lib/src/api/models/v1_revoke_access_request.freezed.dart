// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_revoke_access_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1RevokeAccessRequest _$V1RevokeAccessRequestFromJson(
    Map<String, dynamic> json) {
  return _V1RevokeAccessRequest.fromJson(json);
}

/// @nodoc
mixin _$V1RevokeAccessRequest {
  String get validatorPublicKey => throw _privateConstructorUsedError;

  /// Serializes this V1RevokeAccessRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1RevokeAccessRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1RevokeAccessRequestCopyWith<V1RevokeAccessRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1RevokeAccessRequestCopyWith<$Res> {
  factory $V1RevokeAccessRequestCopyWith(V1RevokeAccessRequest value,
          $Res Function(V1RevokeAccessRequest) then) =
      _$V1RevokeAccessRequestCopyWithImpl<$Res, V1RevokeAccessRequest>;
  @useResult
  $Res call({String validatorPublicKey});
}

/// @nodoc
class _$V1RevokeAccessRequestCopyWithImpl<$Res,
        $Val extends V1RevokeAccessRequest>
    implements $V1RevokeAccessRequestCopyWith<$Res> {
  _$V1RevokeAccessRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1RevokeAccessRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validatorPublicKey = null,
  }) {
    return _then(_value.copyWith(
      validatorPublicKey: null == validatorPublicKey
          ? _value.validatorPublicKey
          : validatorPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1RevokeAccessRequestImplCopyWith<$Res>
    implements $V1RevokeAccessRequestCopyWith<$Res> {
  factory _$$V1RevokeAccessRequestImplCopyWith(
          _$V1RevokeAccessRequestImpl value,
          $Res Function(_$V1RevokeAccessRequestImpl) then) =
      __$$V1RevokeAccessRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String validatorPublicKey});
}

/// @nodoc
class __$$V1RevokeAccessRequestImplCopyWithImpl<$Res>
    extends _$V1RevokeAccessRequestCopyWithImpl<$Res,
        _$V1RevokeAccessRequestImpl>
    implements _$$V1RevokeAccessRequestImplCopyWith<$Res> {
  __$$V1RevokeAccessRequestImplCopyWithImpl(_$V1RevokeAccessRequestImpl _value,
      $Res Function(_$V1RevokeAccessRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1RevokeAccessRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validatorPublicKey = null,
  }) {
    return _then(_$V1RevokeAccessRequestImpl(
      validatorPublicKey: null == validatorPublicKey
          ? _value.validatorPublicKey
          : validatorPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1RevokeAccessRequestImpl implements _V1RevokeAccessRequest {
  const _$V1RevokeAccessRequestImpl({required this.validatorPublicKey});

  factory _$V1RevokeAccessRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1RevokeAccessRequestImplFromJson(json);

  @override
  final String validatorPublicKey;

  @override
  String toString() {
    return 'V1RevokeAccessRequest(validatorPublicKey: $validatorPublicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1RevokeAccessRequestImpl &&
            (identical(other.validatorPublicKey, validatorPublicKey) ||
                other.validatorPublicKey == validatorPublicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, validatorPublicKey);

  /// Create a copy of V1RevokeAccessRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1RevokeAccessRequestImplCopyWith<_$V1RevokeAccessRequestImpl>
      get copyWith => __$$V1RevokeAccessRequestImplCopyWithImpl<
          _$V1RevokeAccessRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1RevokeAccessRequestImplToJson(
      this,
    );
  }
}

abstract class _V1RevokeAccessRequest implements V1RevokeAccessRequest {
  const factory _V1RevokeAccessRequest(
      {required final String validatorPublicKey}) = _$V1RevokeAccessRequestImpl;

  factory _V1RevokeAccessRequest.fromJson(Map<String, dynamic> json) =
      _$V1RevokeAccessRequestImpl.fromJson;

  @override
  String get validatorPublicKey;

  /// Create a copy of V1RevokeAccessRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1RevokeAccessRequestImplCopyWith<_$V1RevokeAccessRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
