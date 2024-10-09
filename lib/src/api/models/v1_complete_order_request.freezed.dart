// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_complete_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1CompleteOrderRequest _$V1CompleteOrderRequestFromJson(
    Map<String, dynamic> json) {
  return _V1CompleteOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$V1CompleteOrderRequest {
  String get orderId => throw _privateConstructorUsedError;
  String? get transactionId => throw _privateConstructorUsedError;

  /// Serializes this V1CompleteOrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1CompleteOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1CompleteOrderRequestCopyWith<V1CompleteOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1CompleteOrderRequestCopyWith<$Res> {
  factory $V1CompleteOrderRequestCopyWith(V1CompleteOrderRequest value,
          $Res Function(V1CompleteOrderRequest) then) =
      _$V1CompleteOrderRequestCopyWithImpl<$Res, V1CompleteOrderRequest>;
  @useResult
  $Res call({String orderId, String? transactionId});
}

/// @nodoc
class _$V1CompleteOrderRequestCopyWithImpl<$Res,
        $Val extends V1CompleteOrderRequest>
    implements $V1CompleteOrderRequestCopyWith<$Res> {
  _$V1CompleteOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1CompleteOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? transactionId = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1CompleteOrderRequestImplCopyWith<$Res>
    implements $V1CompleteOrderRequestCopyWith<$Res> {
  factory _$$V1CompleteOrderRequestImplCopyWith(
          _$V1CompleteOrderRequestImpl value,
          $Res Function(_$V1CompleteOrderRequestImpl) then) =
      __$$V1CompleteOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, String? transactionId});
}

/// @nodoc
class __$$V1CompleteOrderRequestImplCopyWithImpl<$Res>
    extends _$V1CompleteOrderRequestCopyWithImpl<$Res,
        _$V1CompleteOrderRequestImpl>
    implements _$$V1CompleteOrderRequestImplCopyWith<$Res> {
  __$$V1CompleteOrderRequestImplCopyWithImpl(
      _$V1CompleteOrderRequestImpl _value,
      $Res Function(_$V1CompleteOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1CompleteOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? transactionId = freezed,
  }) {
    return _then(_$V1CompleteOrderRequestImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: freezed == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1CompleteOrderRequestImpl implements _V1CompleteOrderRequest {
  const _$V1CompleteOrderRequestImpl(
      {required this.orderId, this.transactionId});

  factory _$V1CompleteOrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1CompleteOrderRequestImplFromJson(json);

  @override
  final String orderId;
  @override
  final String? transactionId;

  @override
  String toString() {
    return 'V1CompleteOrderRequest(orderId: $orderId, transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1CompleteOrderRequestImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, transactionId);

  /// Create a copy of V1CompleteOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1CompleteOrderRequestImplCopyWith<_$V1CompleteOrderRequestImpl>
      get copyWith => __$$V1CompleteOrderRequestImplCopyWithImpl<
          _$V1CompleteOrderRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1CompleteOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _V1CompleteOrderRequest implements V1CompleteOrderRequest {
  const factory _V1CompleteOrderRequest(
      {required final String orderId,
      final String? transactionId}) = _$V1CompleteOrderRequestImpl;

  factory _V1CompleteOrderRequest.fromJson(Map<String, dynamic> json) =
      _$V1CompleteOrderRequestImpl.fromJson;

  @override
  String get orderId;
  @override
  String? get transactionId;

  /// Create a copy of V1CompleteOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1CompleteOrderRequestImplCopyWith<_$V1CompleteOrderRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
