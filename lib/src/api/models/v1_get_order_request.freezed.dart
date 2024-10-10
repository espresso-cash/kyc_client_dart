// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetOrderRequest _$V1GetOrderRequestFromJson(Map<String, dynamic> json) {
  return _V1GetOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$V1GetOrderRequest {
  String? get orderId => throw _privateConstructorUsedError;
  String? get externalId => throw _privateConstructorUsedError;

  /// Serializes this V1GetOrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetOrderRequestCopyWith<V1GetOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetOrderRequestCopyWith<$Res> {
  factory $V1GetOrderRequestCopyWith(
          V1GetOrderRequest value, $Res Function(V1GetOrderRequest) then) =
      _$V1GetOrderRequestCopyWithImpl<$Res, V1GetOrderRequest>;
  @useResult
  $Res call({String? orderId, String? externalId});
}

/// @nodoc
class _$V1GetOrderRequestCopyWithImpl<$Res, $Val extends V1GetOrderRequest>
    implements $V1GetOrderRequestCopyWith<$Res> {
  _$V1GetOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? externalId = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      externalId: freezed == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetOrderRequestImplCopyWith<$Res>
    implements $V1GetOrderRequestCopyWith<$Res> {
  factory _$$V1GetOrderRequestImplCopyWith(_$V1GetOrderRequestImpl value,
          $Res Function(_$V1GetOrderRequestImpl) then) =
      __$$V1GetOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? orderId, String? externalId});
}

/// @nodoc
class __$$V1GetOrderRequestImplCopyWithImpl<$Res>
    extends _$V1GetOrderRequestCopyWithImpl<$Res, _$V1GetOrderRequestImpl>
    implements _$$V1GetOrderRequestImplCopyWith<$Res> {
  __$$V1GetOrderRequestImplCopyWithImpl(_$V1GetOrderRequestImpl _value,
      $Res Function(_$V1GetOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = freezed,
    Object? externalId = freezed,
  }) {
    return _then(_$V1GetOrderRequestImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      externalId: freezed == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetOrderRequestImpl implements _V1GetOrderRequest {
  const _$V1GetOrderRequestImpl({this.orderId, this.externalId});

  factory _$V1GetOrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetOrderRequestImplFromJson(json);

  @override
  final String? orderId;
  @override
  final String? externalId;

  @override
  String toString() {
    return 'V1GetOrderRequest(orderId: $orderId, externalId: $externalId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetOrderRequestImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.externalId, externalId) ||
                other.externalId == externalId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, externalId);

  /// Create a copy of V1GetOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetOrderRequestImplCopyWith<_$V1GetOrderRequestImpl> get copyWith =>
      __$$V1GetOrderRequestImplCopyWithImpl<_$V1GetOrderRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _V1GetOrderRequest implements V1GetOrderRequest {
  const factory _V1GetOrderRequest(
      {final String? orderId,
      final String? externalId}) = _$V1GetOrderRequestImpl;

  factory _V1GetOrderRequest.fromJson(Map<String, dynamic> json) =
      _$V1GetOrderRequestImpl.fromJson;

  @override
  String? get orderId;
  @override
  String? get externalId;

  /// Create a copy of V1GetOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetOrderRequestImplCopyWith<_$V1GetOrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
