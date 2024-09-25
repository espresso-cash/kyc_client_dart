// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_create_on_ramp_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1CreateOnRampOrderResponse _$V1CreateOnRampOrderResponseFromJson(
    Map<String, dynamic> json) {
  return _V1CreateOnRampOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$V1CreateOnRampOrderResponse {
  String get orderId => throw _privateConstructorUsedError;

  /// Serializes this V1CreateOnRampOrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1CreateOnRampOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1CreateOnRampOrderResponseCopyWith<V1CreateOnRampOrderResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1CreateOnRampOrderResponseCopyWith<$Res> {
  factory $V1CreateOnRampOrderResponseCopyWith(
          V1CreateOnRampOrderResponse value,
          $Res Function(V1CreateOnRampOrderResponse) then) =
      _$V1CreateOnRampOrderResponseCopyWithImpl<$Res,
          V1CreateOnRampOrderResponse>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$V1CreateOnRampOrderResponseCopyWithImpl<$Res,
        $Val extends V1CreateOnRampOrderResponse>
    implements $V1CreateOnRampOrderResponseCopyWith<$Res> {
  _$V1CreateOnRampOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1CreateOnRampOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1CreateOnRampOrderResponseImplCopyWith<$Res>
    implements $V1CreateOnRampOrderResponseCopyWith<$Res> {
  factory _$$V1CreateOnRampOrderResponseImplCopyWith(
          _$V1CreateOnRampOrderResponseImpl value,
          $Res Function(_$V1CreateOnRampOrderResponseImpl) then) =
      __$$V1CreateOnRampOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$V1CreateOnRampOrderResponseImplCopyWithImpl<$Res>
    extends _$V1CreateOnRampOrderResponseCopyWithImpl<$Res,
        _$V1CreateOnRampOrderResponseImpl>
    implements _$$V1CreateOnRampOrderResponseImplCopyWith<$Res> {
  __$$V1CreateOnRampOrderResponseImplCopyWithImpl(
      _$V1CreateOnRampOrderResponseImpl _value,
      $Res Function(_$V1CreateOnRampOrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1CreateOnRampOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$V1CreateOnRampOrderResponseImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1CreateOnRampOrderResponseImpl
    implements _V1CreateOnRampOrderResponse {
  const _$V1CreateOnRampOrderResponseImpl({required this.orderId});

  factory _$V1CreateOnRampOrderResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1CreateOnRampOrderResponseImplFromJson(json);

  @override
  final String orderId;

  @override
  String toString() {
    return 'V1CreateOnRampOrderResponse(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1CreateOnRampOrderResponseImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of V1CreateOnRampOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1CreateOnRampOrderResponseImplCopyWith<_$V1CreateOnRampOrderResponseImpl>
      get copyWith => __$$V1CreateOnRampOrderResponseImplCopyWithImpl<
          _$V1CreateOnRampOrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1CreateOnRampOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _V1CreateOnRampOrderResponse
    implements V1CreateOnRampOrderResponse {
  const factory _V1CreateOnRampOrderResponse({required final String orderId}) =
      _$V1CreateOnRampOrderResponseImpl;

  factory _V1CreateOnRampOrderResponse.fromJson(Map<String, dynamic> json) =
      _$V1CreateOnRampOrderResponseImpl.fromJson;

  @override
  String get orderId;

  /// Create a copy of V1CreateOnRampOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1CreateOnRampOrderResponseImplCopyWith<_$V1CreateOnRampOrderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
