// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_grant_access_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GrantAccessRequest _$V1GrantAccessRequestFromJson(Map<String, dynamic> json) {
  return _V1GrantAccessRequest.fromJson(json);
}

/// @nodoc
mixin _$V1GrantAccessRequest {
  String get validatorPublicKey => throw _privateConstructorUsedError;

  /// Serializes this V1GrantAccessRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GrantAccessRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GrantAccessRequestCopyWith<V1GrantAccessRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GrantAccessRequestCopyWith<$Res> {
  factory $V1GrantAccessRequestCopyWith(V1GrantAccessRequest value,
          $Res Function(V1GrantAccessRequest) then) =
      _$V1GrantAccessRequestCopyWithImpl<$Res, V1GrantAccessRequest>;
  @useResult
  $Res call({String validatorPublicKey});
}

/// @nodoc
class _$V1GrantAccessRequestCopyWithImpl<$Res,
        $Val extends V1GrantAccessRequest>
    implements $V1GrantAccessRequestCopyWith<$Res> {
  _$V1GrantAccessRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GrantAccessRequest
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
abstract class _$$V1GrantAccessRequestImplCopyWith<$Res>
    implements $V1GrantAccessRequestCopyWith<$Res> {
  factory _$$V1GrantAccessRequestImplCopyWith(_$V1GrantAccessRequestImpl value,
          $Res Function(_$V1GrantAccessRequestImpl) then) =
      __$$V1GrantAccessRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String validatorPublicKey});
}

/// @nodoc
class __$$V1GrantAccessRequestImplCopyWithImpl<$Res>
    extends _$V1GrantAccessRequestCopyWithImpl<$Res, _$V1GrantAccessRequestImpl>
    implements _$$V1GrantAccessRequestImplCopyWith<$Res> {
  __$$V1GrantAccessRequestImplCopyWithImpl(_$V1GrantAccessRequestImpl _value,
      $Res Function(_$V1GrantAccessRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GrantAccessRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validatorPublicKey = null,
  }) {
    return _then(_$V1GrantAccessRequestImpl(
      validatorPublicKey: null == validatorPublicKey
          ? _value.validatorPublicKey
          : validatorPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GrantAccessRequestImpl implements _V1GrantAccessRequest {
  const _$V1GrantAccessRequestImpl({required this.validatorPublicKey});

  factory _$V1GrantAccessRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GrantAccessRequestImplFromJson(json);

  @override
  final String validatorPublicKey;

  @override
  String toString() {
    return 'V1GrantAccessRequest(validatorPublicKey: $validatorPublicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GrantAccessRequestImpl &&
            (identical(other.validatorPublicKey, validatorPublicKey) ||
                other.validatorPublicKey == validatorPublicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, validatorPublicKey);

  /// Create a copy of V1GrantAccessRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GrantAccessRequestImplCopyWith<_$V1GrantAccessRequestImpl>
      get copyWith =>
          __$$V1GrantAccessRequestImplCopyWithImpl<_$V1GrantAccessRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GrantAccessRequestImplToJson(
      this,
    );
  }
}

abstract class _V1GrantAccessRequest implements V1GrantAccessRequest {
  const factory _V1GrantAccessRequest(
      {required final String validatorPublicKey}) = _$V1GrantAccessRequestImpl;

  factory _V1GrantAccessRequest.fromJson(Map<String, dynamic> json) =
      _$V1GrantAccessRequestImpl.fromJson;

  @override
  String get validatorPublicKey;

  /// Create a copy of V1GrantAccessRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GrantAccessRequestImplCopyWith<_$V1GrantAccessRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
