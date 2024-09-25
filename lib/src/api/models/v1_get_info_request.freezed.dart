// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetInfoRequest _$V1GetInfoRequestFromJson(Map<String, dynamic> json) {
  return _V1GetInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$V1GetInfoRequest {
  String get publicKey => throw _privateConstructorUsedError;

  /// Serializes this V1GetInfoRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetInfoRequestCopyWith<V1GetInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetInfoRequestCopyWith<$Res> {
  factory $V1GetInfoRequestCopyWith(
          V1GetInfoRequest value, $Res Function(V1GetInfoRequest) then) =
      _$V1GetInfoRequestCopyWithImpl<$Res, V1GetInfoRequest>;
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class _$V1GetInfoRequestCopyWithImpl<$Res, $Val extends V1GetInfoRequest>
    implements $V1GetInfoRequestCopyWith<$Res> {
  _$V1GetInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetInfoRequestImplCopyWith<$Res>
    implements $V1GetInfoRequestCopyWith<$Res> {
  factory _$$V1GetInfoRequestImplCopyWith(_$V1GetInfoRequestImpl value,
          $Res Function(_$V1GetInfoRequestImpl) then) =
      __$$V1GetInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$$V1GetInfoRequestImplCopyWithImpl<$Res>
    extends _$V1GetInfoRequestCopyWithImpl<$Res, _$V1GetInfoRequestImpl>
    implements _$$V1GetInfoRequestImplCopyWith<$Res> {
  __$$V1GetInfoRequestImplCopyWithImpl(_$V1GetInfoRequestImpl _value,
      $Res Function(_$V1GetInfoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$V1GetInfoRequestImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetInfoRequestImpl implements _V1GetInfoRequest {
  const _$V1GetInfoRequestImpl({required this.publicKey});

  factory _$V1GetInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetInfoRequestImplFromJson(json);

  @override
  final String publicKey;

  @override
  String toString() {
    return 'V1GetInfoRequest(publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetInfoRequestImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  /// Create a copy of V1GetInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetInfoRequestImplCopyWith<_$V1GetInfoRequestImpl> get copyWith =>
      __$$V1GetInfoRequestImplCopyWithImpl<_$V1GetInfoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _V1GetInfoRequest implements V1GetInfoRequest {
  const factory _V1GetInfoRequest({required final String publicKey}) =
      _$V1GetInfoRequestImpl;

  factory _V1GetInfoRequest.fromJson(Map<String, dynamic> json) =
      _$V1GetInfoRequestImpl.fromJson;

  @override
  String get publicKey;

  /// Create a copy of V1GetInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetInfoRequestImplCopyWith<_$V1GetInfoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
