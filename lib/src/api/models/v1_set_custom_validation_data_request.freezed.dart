// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_set_custom_validation_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1SetCustomValidationDataRequest _$V1SetCustomValidationDataRequestFromJson(
    Map<String, dynamic> json) {
  return _V1SetCustomValidationDataRequest.fromJson(json);
}

/// @nodoc
mixin _$V1SetCustomValidationDataRequest {
  String get type => throw _privateConstructorUsedError;
  String get encryptedValue => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;
  String get userPublicKey => throw _privateConstructorUsedError;

  /// Serializes this V1SetCustomValidationDataRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1SetCustomValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1SetCustomValidationDataRequestCopyWith<V1SetCustomValidationDataRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1SetCustomValidationDataRequestCopyWith<$Res> {
  factory $V1SetCustomValidationDataRequestCopyWith(
          V1SetCustomValidationDataRequest value,
          $Res Function(V1SetCustomValidationDataRequest) then) =
      _$V1SetCustomValidationDataRequestCopyWithImpl<$Res,
          V1SetCustomValidationDataRequest>;
  @useResult
  $Res call(
      {String type,
      String encryptedValue,
      String hash,
      String signature,
      String userPublicKey});
}

/// @nodoc
class _$V1SetCustomValidationDataRequestCopyWithImpl<$Res,
        $Val extends V1SetCustomValidationDataRequest>
    implements $V1SetCustomValidationDataRequestCopyWith<$Res> {
  _$V1SetCustomValidationDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1SetCustomValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? encryptedValue = null,
    Object? hash = null,
    Object? signature = null,
    Object? userPublicKey = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedValue: null == encryptedValue
          ? _value.encryptedValue
          : encryptedValue // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      userPublicKey: null == userPublicKey
          ? _value.userPublicKey
          : userPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1SetCustomValidationDataRequestImplCopyWith<$Res>
    implements $V1SetCustomValidationDataRequestCopyWith<$Res> {
  factory _$$V1SetCustomValidationDataRequestImplCopyWith(
          _$V1SetCustomValidationDataRequestImpl value,
          $Res Function(_$V1SetCustomValidationDataRequestImpl) then) =
      __$$V1SetCustomValidationDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String encryptedValue,
      String hash,
      String signature,
      String userPublicKey});
}

/// @nodoc
class __$$V1SetCustomValidationDataRequestImplCopyWithImpl<$Res>
    extends _$V1SetCustomValidationDataRequestCopyWithImpl<$Res,
        _$V1SetCustomValidationDataRequestImpl>
    implements _$$V1SetCustomValidationDataRequestImplCopyWith<$Res> {
  __$$V1SetCustomValidationDataRequestImplCopyWithImpl(
      _$V1SetCustomValidationDataRequestImpl _value,
      $Res Function(_$V1SetCustomValidationDataRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1SetCustomValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? encryptedValue = null,
    Object? hash = null,
    Object? signature = null,
    Object? userPublicKey = null,
  }) {
    return _then(_$V1SetCustomValidationDataRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedValue: null == encryptedValue
          ? _value.encryptedValue
          : encryptedValue // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      userPublicKey: null == userPublicKey
          ? _value.userPublicKey
          : userPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1SetCustomValidationDataRequestImpl
    implements _V1SetCustomValidationDataRequest {
  const _$V1SetCustomValidationDataRequestImpl(
      {required this.type,
      required this.encryptedValue,
      required this.hash,
      required this.signature,
      required this.userPublicKey});

  factory _$V1SetCustomValidationDataRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1SetCustomValidationDataRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String encryptedValue;
  @override
  final String hash;
  @override
  final String signature;
  @override
  final String userPublicKey;

  @override
  String toString() {
    return 'V1SetCustomValidationDataRequest(type: $type, encryptedValue: $encryptedValue, hash: $hash, signature: $signature, userPublicKey: $userPublicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1SetCustomValidationDataRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.encryptedValue, encryptedValue) ||
                other.encryptedValue == encryptedValue) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.signature, signature) ||
                other.signature == signature) &&
            (identical(other.userPublicKey, userPublicKey) ||
                other.userPublicKey == userPublicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, encryptedValue, hash, signature, userPublicKey);

  /// Create a copy of V1SetCustomValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1SetCustomValidationDataRequestImplCopyWith<
          _$V1SetCustomValidationDataRequestImpl>
      get copyWith => __$$V1SetCustomValidationDataRequestImplCopyWithImpl<
          _$V1SetCustomValidationDataRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1SetCustomValidationDataRequestImplToJson(
      this,
    );
  }
}

abstract class _V1SetCustomValidationDataRequest
    implements V1SetCustomValidationDataRequest {
  const factory _V1SetCustomValidationDataRequest(
          {required final String type,
          required final String encryptedValue,
          required final String hash,
          required final String signature,
          required final String userPublicKey}) =
      _$V1SetCustomValidationDataRequestImpl;

  factory _V1SetCustomValidationDataRequest.fromJson(
          Map<String, dynamic> json) =
      _$V1SetCustomValidationDataRequestImpl.fromJson;

  @override
  String get type;
  @override
  String get encryptedValue;
  @override
  String get hash;
  @override
  String get signature;
  @override
  String get userPublicKey;

  /// Create a copy of V1SetCustomValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1SetCustomValidationDataRequestImplCopyWith<
          _$V1SetCustomValidationDataRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
