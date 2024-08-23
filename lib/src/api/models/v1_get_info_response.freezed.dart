// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetInfoResponse _$V1GetInfoResponseFromJson(Map<String, dynamic> json) {
  return _V1GetInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetInfoResponse {
  String get encryptedSecretKey => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;
  String get walletAddress => throw _privateConstructorUsedError;

  /// Serializes this V1GetInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetInfoResponseCopyWith<V1GetInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetInfoResponseCopyWith<$Res> {
  factory $V1GetInfoResponseCopyWith(
          V1GetInfoResponse value, $Res Function(V1GetInfoResponse) then) =
      _$V1GetInfoResponseCopyWithImpl<$Res, V1GetInfoResponse>;
  @useResult
  $Res call(
      {String encryptedSecretKey,
      String message,
      String publicKey,
      String walletAddress});
}

/// @nodoc
class _$V1GetInfoResponseCopyWithImpl<$Res, $Val extends V1GetInfoResponse>
    implements $V1GetInfoResponseCopyWith<$Res> {
  _$V1GetInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedSecretKey = null,
    Object? message = null,
    Object? publicKey = null,
    Object? walletAddress = null,
  }) {
    return _then(_value.copyWith(
      encryptedSecretKey: null == encryptedSecretKey
          ? _value.encryptedSecretKey
          : encryptedSecretKey // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetInfoResponseImplCopyWith<$Res>
    implements $V1GetInfoResponseCopyWith<$Res> {
  factory _$$V1GetInfoResponseImplCopyWith(_$V1GetInfoResponseImpl value,
          $Res Function(_$V1GetInfoResponseImpl) then) =
      __$$V1GetInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String encryptedSecretKey,
      String message,
      String publicKey,
      String walletAddress});
}

/// @nodoc
class __$$V1GetInfoResponseImplCopyWithImpl<$Res>
    extends _$V1GetInfoResponseCopyWithImpl<$Res, _$V1GetInfoResponseImpl>
    implements _$$V1GetInfoResponseImplCopyWith<$Res> {
  __$$V1GetInfoResponseImplCopyWithImpl(_$V1GetInfoResponseImpl _value,
      $Res Function(_$V1GetInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? encryptedSecretKey = null,
    Object? message = null,
    Object? publicKey = null,
    Object? walletAddress = null,
  }) {
    return _then(_$V1GetInfoResponseImpl(
      encryptedSecretKey: null == encryptedSecretKey
          ? _value.encryptedSecretKey
          : encryptedSecretKey // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetInfoResponseImpl implements _V1GetInfoResponse {
  const _$V1GetInfoResponseImpl(
      {required this.encryptedSecretKey,
      required this.message,
      required this.publicKey,
      required this.walletAddress});

  factory _$V1GetInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetInfoResponseImplFromJson(json);

  @override
  final String encryptedSecretKey;
  @override
  final String message;
  @override
  final String publicKey;
  @override
  final String walletAddress;

  @override
  String toString() {
    return 'V1GetInfoResponse(encryptedSecretKey: $encryptedSecretKey, message: $message, publicKey: $publicKey, walletAddress: $walletAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetInfoResponseImpl &&
            (identical(other.encryptedSecretKey, encryptedSecretKey) ||
                other.encryptedSecretKey == encryptedSecretKey) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, encryptedSecretKey, message, publicKey, walletAddress);

  /// Create a copy of V1GetInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetInfoResponseImplCopyWith<_$V1GetInfoResponseImpl> get copyWith =>
      __$$V1GetInfoResponseImplCopyWithImpl<_$V1GetInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetInfoResponse implements V1GetInfoResponse {
  const factory _V1GetInfoResponse(
      {required final String encryptedSecretKey,
      required final String message,
      required final String publicKey,
      required final String walletAddress}) = _$V1GetInfoResponseImpl;

  factory _V1GetInfoResponse.fromJson(Map<String, dynamic> json) =
      _$V1GetInfoResponseImpl.fromJson;

  @override
  String get encryptedSecretKey;
  @override
  String get message;
  @override
  String get publicKey;
  @override
  String get walletAddress;

  /// Create a copy of V1GetInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetInfoResponseImplCopyWith<_$V1GetInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
