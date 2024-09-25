// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetOrdersResponse _$V1GetOrdersResponseFromJson(Map<String, dynamic> json) {
  return _V1GetOrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetOrdersResponse {
  List<V1GetOrderResponse> get orders => throw _privateConstructorUsedError;

  /// Serializes this V1GetOrdersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetOrdersResponseCopyWith<V1GetOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetOrdersResponseCopyWith<$Res> {
  factory $V1GetOrdersResponseCopyWith(
          V1GetOrdersResponse value, $Res Function(V1GetOrdersResponse) then) =
      _$V1GetOrdersResponseCopyWithImpl<$Res, V1GetOrdersResponse>;
  @useResult
  $Res call({List<V1GetOrderResponse> orders});
}

/// @nodoc
class _$V1GetOrdersResponseCopyWithImpl<$Res, $Val extends V1GetOrdersResponse>
    implements $V1GetOrdersResponseCopyWith<$Res> {
  _$V1GetOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<V1GetOrderResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetOrdersResponseImplCopyWith<$Res>
    implements $V1GetOrdersResponseCopyWith<$Res> {
  factory _$$V1GetOrdersResponseImplCopyWith(_$V1GetOrdersResponseImpl value,
          $Res Function(_$V1GetOrdersResponseImpl) then) =
      __$$V1GetOrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<V1GetOrderResponse> orders});
}

/// @nodoc
class __$$V1GetOrdersResponseImplCopyWithImpl<$Res>
    extends _$V1GetOrdersResponseCopyWithImpl<$Res, _$V1GetOrdersResponseImpl>
    implements _$$V1GetOrdersResponseImplCopyWith<$Res> {
  __$$V1GetOrdersResponseImplCopyWithImpl(_$V1GetOrdersResponseImpl _value,
      $Res Function(_$V1GetOrdersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$V1GetOrdersResponseImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<V1GetOrderResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetOrdersResponseImpl implements _V1GetOrdersResponse {
  const _$V1GetOrdersResponseImpl(
      {required final List<V1GetOrderResponse> orders})
      : _orders = orders;

  factory _$V1GetOrdersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetOrdersResponseImplFromJson(json);

  final List<V1GetOrderResponse> _orders;
  @override
  List<V1GetOrderResponse> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'V1GetOrdersResponse(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetOrdersResponseImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  /// Create a copy of V1GetOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetOrdersResponseImplCopyWith<_$V1GetOrdersResponseImpl> get copyWith =>
      __$$V1GetOrdersResponseImplCopyWithImpl<_$V1GetOrdersResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetOrdersResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetOrdersResponse implements V1GetOrdersResponse {
  const factory _V1GetOrdersResponse(
          {required final List<V1GetOrderResponse> orders}) =
      _$V1GetOrdersResponseImpl;

  factory _V1GetOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$V1GetOrdersResponseImpl.fromJson;

  @override
  List<V1GetOrderResponse> get orders;

  /// Create a copy of V1GetOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetOrdersResponseImplCopyWith<_$V1GetOrdersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
