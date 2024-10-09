// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_create_off_ramp_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1CreateOffRampOrderResponse _$V1CreateOffRampOrderResponseFromJson(
    Map<String, dynamic> json) {
  return _V1CreateOffRampOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$V1CreateOffRampOrderResponse {
  String get orderId => throw _privateConstructorUsedError;

  /// Serializes this V1CreateOffRampOrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1CreateOffRampOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1CreateOffRampOrderResponseCopyWith<V1CreateOffRampOrderResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1CreateOffRampOrderResponseCopyWith<$Res> {
  factory $V1CreateOffRampOrderResponseCopyWith(
          V1CreateOffRampOrderResponse value,
          $Res Function(V1CreateOffRampOrderResponse) then) =
      _$V1CreateOffRampOrderResponseCopyWithImpl<$Res,
          V1CreateOffRampOrderResponse>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$V1CreateOffRampOrderResponseCopyWithImpl<$Res,
        $Val extends V1CreateOffRampOrderResponse>
    implements $V1CreateOffRampOrderResponseCopyWith<$Res> {
  _$V1CreateOffRampOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1CreateOffRampOrderResponse
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
abstract class _$$V1CreateOffRampOrderResponseImplCopyWith<$Res>
    implements $V1CreateOffRampOrderResponseCopyWith<$Res> {
  factory _$$V1CreateOffRampOrderResponseImplCopyWith(
          _$V1CreateOffRampOrderResponseImpl value,
          $Res Function(_$V1CreateOffRampOrderResponseImpl) then) =
      __$$V1CreateOffRampOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$V1CreateOffRampOrderResponseImplCopyWithImpl<$Res>
    extends _$V1CreateOffRampOrderResponseCopyWithImpl<$Res,
        _$V1CreateOffRampOrderResponseImpl>
    implements _$$V1CreateOffRampOrderResponseImplCopyWith<$Res> {
  __$$V1CreateOffRampOrderResponseImplCopyWithImpl(
      _$V1CreateOffRampOrderResponseImpl _value,
      $Res Function(_$V1CreateOffRampOrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1CreateOffRampOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$V1CreateOffRampOrderResponseImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1CreateOffRampOrderResponseImpl
    implements _V1CreateOffRampOrderResponse {
  const _$V1CreateOffRampOrderResponseImpl({required this.orderId});

  factory _$V1CreateOffRampOrderResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1CreateOffRampOrderResponseImplFromJson(json);

  @override
  final String orderId;

  @override
  String toString() {
    return 'V1CreateOffRampOrderResponse(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1CreateOffRampOrderResponseImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of V1CreateOffRampOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1CreateOffRampOrderResponseImplCopyWith<
          _$V1CreateOffRampOrderResponseImpl>
      get copyWith => __$$V1CreateOffRampOrderResponseImplCopyWithImpl<
          _$V1CreateOffRampOrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1CreateOffRampOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _V1CreateOffRampOrderResponse
    implements V1CreateOffRampOrderResponse {
  const factory _V1CreateOffRampOrderResponse({required final String orderId}) =
      _$V1CreateOffRampOrderResponseImpl;

  factory _V1CreateOffRampOrderResponse.fromJson(Map<String, dynamic> json) =
      _$V1CreateOffRampOrderResponseImpl.fromJson;

  @override
  String get orderId;

  /// Create a copy of V1CreateOffRampOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1CreateOffRampOrderResponseImplCopyWith<
          _$V1CreateOffRampOrderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
