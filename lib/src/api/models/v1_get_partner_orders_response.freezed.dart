// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_partner_orders_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetPartnerOrdersResponse _$V1GetPartnerOrdersResponseFromJson(
    Map<String, dynamic> json) {
  return _V1GetPartnerOrdersResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetPartnerOrdersResponse {
  List<V1GetOrderResponse> get orders => throw _privateConstructorUsedError;

  /// Serializes this V1GetPartnerOrdersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetPartnerOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetPartnerOrdersResponseCopyWith<V1GetPartnerOrdersResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetPartnerOrdersResponseCopyWith<$Res> {
  factory $V1GetPartnerOrdersResponseCopyWith(V1GetPartnerOrdersResponse value,
          $Res Function(V1GetPartnerOrdersResponse) then) =
      _$V1GetPartnerOrdersResponseCopyWithImpl<$Res,
          V1GetPartnerOrdersResponse>;
  @useResult
  $Res call({List<V1GetOrderResponse> orders});
}

/// @nodoc
class _$V1GetPartnerOrdersResponseCopyWithImpl<$Res,
        $Val extends V1GetPartnerOrdersResponse>
    implements $V1GetPartnerOrdersResponseCopyWith<$Res> {
  _$V1GetPartnerOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetPartnerOrdersResponse
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
abstract class _$$V1GetPartnerOrdersResponseImplCopyWith<$Res>
    implements $V1GetPartnerOrdersResponseCopyWith<$Res> {
  factory _$$V1GetPartnerOrdersResponseImplCopyWith(
          _$V1GetPartnerOrdersResponseImpl value,
          $Res Function(_$V1GetPartnerOrdersResponseImpl) then) =
      __$$V1GetPartnerOrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<V1GetOrderResponse> orders});
}

/// @nodoc
class __$$V1GetPartnerOrdersResponseImplCopyWithImpl<$Res>
    extends _$V1GetPartnerOrdersResponseCopyWithImpl<$Res,
        _$V1GetPartnerOrdersResponseImpl>
    implements _$$V1GetPartnerOrdersResponseImplCopyWith<$Res> {
  __$$V1GetPartnerOrdersResponseImplCopyWithImpl(
      _$V1GetPartnerOrdersResponseImpl _value,
      $Res Function(_$V1GetPartnerOrdersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetPartnerOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$V1GetPartnerOrdersResponseImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<V1GetOrderResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetPartnerOrdersResponseImpl implements _V1GetPartnerOrdersResponse {
  const _$V1GetPartnerOrdersResponseImpl(
      {required final List<V1GetOrderResponse> orders})
      : _orders = orders;

  factory _$V1GetPartnerOrdersResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1GetPartnerOrdersResponseImplFromJson(json);

  final List<V1GetOrderResponse> _orders;
  @override
  List<V1GetOrderResponse> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'V1GetPartnerOrdersResponse(orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetPartnerOrdersResponseImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  /// Create a copy of V1GetPartnerOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetPartnerOrdersResponseImplCopyWith<_$V1GetPartnerOrdersResponseImpl>
      get copyWith => __$$V1GetPartnerOrdersResponseImplCopyWithImpl<
          _$V1GetPartnerOrdersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetPartnerOrdersResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetPartnerOrdersResponse
    implements V1GetPartnerOrdersResponse {
  const factory _V1GetPartnerOrdersResponse(
          {required final List<V1GetOrderResponse> orders}) =
      _$V1GetPartnerOrdersResponseImpl;

  factory _V1GetPartnerOrdersResponse.fromJson(Map<String, dynamic> json) =
      _$V1GetPartnerOrdersResponseImpl.fromJson;

  @override
  List<V1GetOrderResponse> get orders;

  /// Create a copy of V1GetPartnerOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetPartnerOrdersResponseImplCopyWith<_$V1GetPartnerOrdersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
