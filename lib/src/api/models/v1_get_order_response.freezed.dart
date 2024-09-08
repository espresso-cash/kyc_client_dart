// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetOrderResponse _$V1GetOrderResponseFromJson(Map<String, dynamic> json) {
  return _V1GetOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetOrderResponse {
  String get orderId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get partnerPublicKey => throw _privateConstructorUsedError;
  String get userPublicKey => throw _privateConstructorUsedError;
  V1OnRampData get onRamp => throw _privateConstructorUsedError;

  /// Serializes this V1GetOrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetOrderResponseCopyWith<V1GetOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetOrderResponseCopyWith<$Res> {
  factory $V1GetOrderResponseCopyWith(
          V1GetOrderResponse value, $Res Function(V1GetOrderResponse) then) =
      _$V1GetOrderResponseCopyWithImpl<$Res, V1GetOrderResponse>;
  @useResult
  $Res call(
      {String orderId,
      String status,
      String partnerPublicKey,
      String userPublicKey,
      V1OnRampData onRamp});

  $V1OnRampDataCopyWith<$Res> get onRamp;
}

/// @nodoc
class _$V1GetOrderResponseCopyWithImpl<$Res, $Val extends V1GetOrderResponse>
    implements $V1GetOrderResponseCopyWith<$Res> {
  _$V1GetOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? status = null,
    Object? partnerPublicKey = null,
    Object? userPublicKey = null,
    Object? onRamp = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      partnerPublicKey: null == partnerPublicKey
          ? _value.partnerPublicKey
          : partnerPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      userPublicKey: null == userPublicKey
          ? _value.userPublicKey
          : userPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      onRamp: null == onRamp
          ? _value.onRamp
          : onRamp // ignore: cast_nullable_to_non_nullable
              as V1OnRampData,
    ) as $Val);
  }

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $V1OnRampDataCopyWith<$Res> get onRamp {
    return $V1OnRampDataCopyWith<$Res>(_value.onRamp, (value) {
      return _then(_value.copyWith(onRamp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$V1GetOrderResponseImplCopyWith<$Res>
    implements $V1GetOrderResponseCopyWith<$Res> {
  factory _$$V1GetOrderResponseImplCopyWith(_$V1GetOrderResponseImpl value,
          $Res Function(_$V1GetOrderResponseImpl) then) =
      __$$V1GetOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String status,
      String partnerPublicKey,
      String userPublicKey,
      V1OnRampData onRamp});

  @override
  $V1OnRampDataCopyWith<$Res> get onRamp;
}

/// @nodoc
class __$$V1GetOrderResponseImplCopyWithImpl<$Res>
    extends _$V1GetOrderResponseCopyWithImpl<$Res, _$V1GetOrderResponseImpl>
    implements _$$V1GetOrderResponseImplCopyWith<$Res> {
  __$$V1GetOrderResponseImplCopyWithImpl(_$V1GetOrderResponseImpl _value,
      $Res Function(_$V1GetOrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? status = null,
    Object? partnerPublicKey = null,
    Object? userPublicKey = null,
    Object? onRamp = null,
  }) {
    return _then(_$V1GetOrderResponseImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      partnerPublicKey: null == partnerPublicKey
          ? _value.partnerPublicKey
          : partnerPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      userPublicKey: null == userPublicKey
          ? _value.userPublicKey
          : userPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      onRamp: null == onRamp
          ? _value.onRamp
          : onRamp // ignore: cast_nullable_to_non_nullable
              as V1OnRampData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetOrderResponseImpl implements _V1GetOrderResponse {
  const _$V1GetOrderResponseImpl(
      {required this.orderId,
      required this.status,
      required this.partnerPublicKey,
      required this.userPublicKey,
      required this.onRamp});

  factory _$V1GetOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetOrderResponseImplFromJson(json);

  @override
  final String orderId;
  @override
  final String status;
  @override
  final String partnerPublicKey;
  @override
  final String userPublicKey;
  @override
  final V1OnRampData onRamp;

  @override
  String toString() {
    return 'V1GetOrderResponse(orderId: $orderId, status: $status, partnerPublicKey: $partnerPublicKey, userPublicKey: $userPublicKey, onRamp: $onRamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetOrderResponseImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.partnerPublicKey, partnerPublicKey) ||
                other.partnerPublicKey == partnerPublicKey) &&
            (identical(other.userPublicKey, userPublicKey) ||
                other.userPublicKey == userPublicKey) &&
            (identical(other.onRamp, onRamp) || other.onRamp == onRamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, orderId, status, partnerPublicKey, userPublicKey, onRamp);

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetOrderResponseImplCopyWith<_$V1GetOrderResponseImpl> get copyWith =>
      __$$V1GetOrderResponseImplCopyWithImpl<_$V1GetOrderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetOrderResponse implements V1GetOrderResponse {
  const factory _V1GetOrderResponse(
      {required final String orderId,
      required final String status,
      required final String partnerPublicKey,
      required final String userPublicKey,
      required final V1OnRampData onRamp}) = _$V1GetOrderResponseImpl;

  factory _V1GetOrderResponse.fromJson(Map<String, dynamic> json) =
      _$V1GetOrderResponseImpl.fromJson;

  @override
  String get orderId;
  @override
  String get status;
  @override
  String get partnerPublicKey;
  @override
  String get userPublicKey;
  @override
  V1OnRampData get onRamp;

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetOrderResponseImplCopyWith<_$V1GetOrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
