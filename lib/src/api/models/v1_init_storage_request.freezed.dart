// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_init_storage_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1InitStorageRequest _$V1InitStorageRequestFromJson(Map<String, dynamic> json) {
  return _V1InitStorageRequest.fromJson(json);
}

/// @nodoc
mixin _$V1InitStorageRequest {
  String get walletAddress => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get encryptedSecretKey => throw _privateConstructorUsedError;
  String get walletProofSignature => throw _privateConstructorUsedError;
  String get walletProofMessage => throw _privateConstructorUsedError;

  /// Serializes this V1InitStorageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1InitStorageRequestCopyWith<V1InitStorageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1InitStorageRequestCopyWith<$Res> {
  factory $V1InitStorageRequestCopyWith(V1InitStorageRequest value,
          $Res Function(V1InitStorageRequest) then) =
      _$V1InitStorageRequestCopyWithImpl<$Res, V1InitStorageRequest>;
  @useResult
  $Res call(
      {String walletAddress,
      String message,
      String encryptedSecretKey,
      String walletProofSignature,
      String walletProofMessage});
}

/// @nodoc
class _$V1InitStorageRequestCopyWithImpl<$Res,
        $Val extends V1InitStorageRequest>
    implements $V1InitStorageRequestCopyWith<$Res> {
  _$V1InitStorageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? message = null,
    Object? encryptedSecretKey = null,
    Object? walletProofSignature = null,
    Object? walletProofMessage = null,
  }) {
    return _then(_value.copyWith(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedSecretKey: null == encryptedSecretKey
          ? _value.encryptedSecretKey
          : encryptedSecretKey // ignore: cast_nullable_to_non_nullable
              as String,
      walletProofSignature: null == walletProofSignature
          ? _value.walletProofSignature
          : walletProofSignature // ignore: cast_nullable_to_non_nullable
              as String,
      walletProofMessage: null == walletProofMessage
          ? _value.walletProofMessage
          : walletProofMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1InitStorageRequestImplCopyWith<$Res>
    implements $V1InitStorageRequestCopyWith<$Res> {
  factory _$$V1InitStorageRequestImplCopyWith(_$V1InitStorageRequestImpl value,
          $Res Function(_$V1InitStorageRequestImpl) then) =
      __$$V1InitStorageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletAddress,
      String message,
      String encryptedSecretKey,
      String walletProofSignature,
      String walletProofMessage});
}

/// @nodoc
class __$$V1InitStorageRequestImplCopyWithImpl<$Res>
    extends _$V1InitStorageRequestCopyWithImpl<$Res, _$V1InitStorageRequestImpl>
    implements _$$V1InitStorageRequestImplCopyWith<$Res> {
  __$$V1InitStorageRequestImplCopyWithImpl(_$V1InitStorageRequestImpl _value,
      $Res Function(_$V1InitStorageRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? message = null,
    Object? encryptedSecretKey = null,
    Object? walletProofSignature = null,
    Object? walletProofMessage = null,
  }) {
    return _then(_$V1InitStorageRequestImpl(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedSecretKey: null == encryptedSecretKey
          ? _value.encryptedSecretKey
          : encryptedSecretKey // ignore: cast_nullable_to_non_nullable
              as String,
      walletProofSignature: null == walletProofSignature
          ? _value.walletProofSignature
          : walletProofSignature // ignore: cast_nullable_to_non_nullable
              as String,
      walletProofMessage: null == walletProofMessage
          ? _value.walletProofMessage
          : walletProofMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1InitStorageRequestImpl implements _V1InitStorageRequest {
  const _$V1InitStorageRequestImpl(
      {required this.walletAddress,
      required this.message,
      required this.encryptedSecretKey,
      required this.walletProofSignature,
      required this.walletProofMessage});

  factory _$V1InitStorageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1InitStorageRequestImplFromJson(json);

  @override
  final String walletAddress;
  @override
  final String message;
  @override
  final String encryptedSecretKey;
  @override
  final String walletProofSignature;
  @override
  final String walletProofMessage;

  @override
  String toString() {
    return 'V1InitStorageRequest(walletAddress: $walletAddress, message: $message, encryptedSecretKey: $encryptedSecretKey, walletProofSignature: $walletProofSignature, walletProofMessage: $walletProofMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1InitStorageRequestImpl &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.encryptedSecretKey, encryptedSecretKey) ||
                other.encryptedSecretKey == encryptedSecretKey) &&
            (identical(other.walletProofSignature, walletProofSignature) ||
                other.walletProofSignature == walletProofSignature) &&
            (identical(other.walletProofMessage, walletProofMessage) ||
                other.walletProofMessage == walletProofMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, walletAddress, message,
      encryptedSecretKey, walletProofSignature, walletProofMessage);

  /// Create a copy of V1InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1InitStorageRequestImplCopyWith<_$V1InitStorageRequestImpl>
      get copyWith =>
          __$$V1InitStorageRequestImplCopyWithImpl<_$V1InitStorageRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1InitStorageRequestImplToJson(
      this,
    );
  }
}

abstract class _V1InitStorageRequest implements V1InitStorageRequest {
  const factory _V1InitStorageRequest(
      {required final String walletAddress,
      required final String message,
      required final String encryptedSecretKey,
      required final String walletProofSignature,
      required final String walletProofMessage}) = _$V1InitStorageRequestImpl;

  factory _V1InitStorageRequest.fromJson(Map<String, dynamic> json) =
      _$V1InitStorageRequestImpl.fromJson;

  @override
  String get walletAddress;
  @override
  String get message;
  @override
  String get encryptedSecretKey;
  @override
  String get walletProofSignature;
  @override
  String get walletProofMessage;

  /// Create a copy of V1InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1InitStorageRequestImplCopyWith<_$V1InitStorageRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
