// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_create_on_ramp_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1CreateOnRampOrderRequest _$V1CreateOnRampOrderRequestFromJson(
    Map<String, dynamic> json) {
  return _V1CreateOnRampOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$V1CreateOnRampOrderRequest {
  String get partnerPublicKey => throw _privateConstructorUsedError;
  String get cryptoAmount => throw _privateConstructorUsedError;
  String get cryptoCurrency => throw _privateConstructorUsedError;
  String get fiatAmount => throw _privateConstructorUsedError;
  String get fiatCurrency => throw _privateConstructorUsedError;
  String get userSignature => throw _privateConstructorUsedError;

  /// Serializes this V1CreateOnRampOrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1CreateOnRampOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1CreateOnRampOrderRequestCopyWith<V1CreateOnRampOrderRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1CreateOnRampOrderRequestCopyWith<$Res> {
  factory $V1CreateOnRampOrderRequestCopyWith(V1CreateOnRampOrderRequest value,
          $Res Function(V1CreateOnRampOrderRequest) then) =
      _$V1CreateOnRampOrderRequestCopyWithImpl<$Res,
          V1CreateOnRampOrderRequest>;
  @useResult
  $Res call(
      {String partnerPublicKey,
      String cryptoAmount,
      String cryptoCurrency,
      String fiatAmount,
      String fiatCurrency,
      String userSignature});
}

/// @nodoc
class _$V1CreateOnRampOrderRequestCopyWithImpl<$Res,
        $Val extends V1CreateOnRampOrderRequest>
    implements $V1CreateOnRampOrderRequestCopyWith<$Res> {
  _$V1CreateOnRampOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1CreateOnRampOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partnerPublicKey = null,
    Object? cryptoAmount = null,
    Object? cryptoCurrency = null,
    Object? fiatAmount = null,
    Object? fiatCurrency = null,
    Object? userSignature = null,
  }) {
    return _then(_value.copyWith(
      partnerPublicKey: null == partnerPublicKey
          ? _value.partnerPublicKey
          : partnerPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoAmount: null == cryptoAmount
          ? _value.cryptoAmount
          : cryptoAmount // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoCurrency: null == cryptoCurrency
          ? _value.cryptoCurrency
          : cryptoCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      fiatAmount: null == fiatAmount
          ? _value.fiatAmount
          : fiatAmount // ignore: cast_nullable_to_non_nullable
              as String,
      fiatCurrency: null == fiatCurrency
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      userSignature: null == userSignature
          ? _value.userSignature
          : userSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1CreateOnRampOrderRequestImplCopyWith<$Res>
    implements $V1CreateOnRampOrderRequestCopyWith<$Res> {
  factory _$$V1CreateOnRampOrderRequestImplCopyWith(
          _$V1CreateOnRampOrderRequestImpl value,
          $Res Function(_$V1CreateOnRampOrderRequestImpl) then) =
      __$$V1CreateOnRampOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String partnerPublicKey,
      String cryptoAmount,
      String cryptoCurrency,
      String fiatAmount,
      String fiatCurrency,
      String userSignature});
}

/// @nodoc
class __$$V1CreateOnRampOrderRequestImplCopyWithImpl<$Res>
    extends _$V1CreateOnRampOrderRequestCopyWithImpl<$Res,
        _$V1CreateOnRampOrderRequestImpl>
    implements _$$V1CreateOnRampOrderRequestImplCopyWith<$Res> {
  __$$V1CreateOnRampOrderRequestImplCopyWithImpl(
      _$V1CreateOnRampOrderRequestImpl _value,
      $Res Function(_$V1CreateOnRampOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1CreateOnRampOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partnerPublicKey = null,
    Object? cryptoAmount = null,
    Object? cryptoCurrency = null,
    Object? fiatAmount = null,
    Object? fiatCurrency = null,
    Object? userSignature = null,
  }) {
    return _then(_$V1CreateOnRampOrderRequestImpl(
      partnerPublicKey: null == partnerPublicKey
          ? _value.partnerPublicKey
          : partnerPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoAmount: null == cryptoAmount
          ? _value.cryptoAmount
          : cryptoAmount // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoCurrency: null == cryptoCurrency
          ? _value.cryptoCurrency
          : cryptoCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      fiatAmount: null == fiatAmount
          ? _value.fiatAmount
          : fiatAmount // ignore: cast_nullable_to_non_nullable
              as String,
      fiatCurrency: null == fiatCurrency
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      userSignature: null == userSignature
          ? _value.userSignature
          : userSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1CreateOnRampOrderRequestImpl implements _V1CreateOnRampOrderRequest {
  const _$V1CreateOnRampOrderRequestImpl(
      {required this.partnerPublicKey,
      required this.cryptoAmount,
      required this.cryptoCurrency,
      required this.fiatAmount,
      required this.fiatCurrency,
      required this.userSignature});

  factory _$V1CreateOnRampOrderRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1CreateOnRampOrderRequestImplFromJson(json);

  @override
  final String partnerPublicKey;
  @override
  final String cryptoAmount;
  @override
  final String cryptoCurrency;
  @override
  final String fiatAmount;
  @override
  final String fiatCurrency;
  @override
  final String userSignature;

  @override
  String toString() {
    return 'V1CreateOnRampOrderRequest(partnerPublicKey: $partnerPublicKey, cryptoAmount: $cryptoAmount, cryptoCurrency: $cryptoCurrency, fiatAmount: $fiatAmount, fiatCurrency: $fiatCurrency, userSignature: $userSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1CreateOnRampOrderRequestImpl &&
            (identical(other.partnerPublicKey, partnerPublicKey) ||
                other.partnerPublicKey == partnerPublicKey) &&
            (identical(other.cryptoAmount, cryptoAmount) ||
                other.cryptoAmount == cryptoAmount) &&
            (identical(other.cryptoCurrency, cryptoCurrency) ||
                other.cryptoCurrency == cryptoCurrency) &&
            (identical(other.fiatAmount, fiatAmount) ||
                other.fiatAmount == fiatAmount) &&
            (identical(other.fiatCurrency, fiatCurrency) ||
                other.fiatCurrency == fiatCurrency) &&
            (identical(other.userSignature, userSignature) ||
                other.userSignature == userSignature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, partnerPublicKey, cryptoAmount,
      cryptoCurrency, fiatAmount, fiatCurrency, userSignature);

  /// Create a copy of V1CreateOnRampOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1CreateOnRampOrderRequestImplCopyWith<_$V1CreateOnRampOrderRequestImpl>
      get copyWith => __$$V1CreateOnRampOrderRequestImplCopyWithImpl<
          _$V1CreateOnRampOrderRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1CreateOnRampOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _V1CreateOnRampOrderRequest
    implements V1CreateOnRampOrderRequest {
  const factory _V1CreateOnRampOrderRequest(
      {required final String partnerPublicKey,
      required final String cryptoAmount,
      required final String cryptoCurrency,
      required final String fiatAmount,
      required final String fiatCurrency,
      required final String userSignature}) = _$V1CreateOnRampOrderRequestImpl;

  factory _V1CreateOnRampOrderRequest.fromJson(Map<String, dynamic> json) =
      _$V1CreateOnRampOrderRequestImpl.fromJson;

  @override
  String get partnerPublicKey;
  @override
  String get cryptoAmount;
  @override
  String get cryptoCurrency;
  @override
  String get fiatAmount;
  @override
  String get fiatCurrency;
  @override
  String get userSignature;

  /// Create a copy of V1CreateOnRampOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1CreateOnRampOrderRequestImplCopyWith<_$V1CreateOnRampOrderRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
