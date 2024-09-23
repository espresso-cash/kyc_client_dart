// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_reject_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1RejectOrderRequest _$V1RejectOrderRequestFromJson(Map<String, dynamic> json) {
  return _V1RejectOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$V1RejectOrderRequest {
  String get orderId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  /// Serializes this V1RejectOrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1RejectOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1RejectOrderRequestCopyWith<V1RejectOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1RejectOrderRequestCopyWith<$Res> {
  factory $V1RejectOrderRequestCopyWith(V1RejectOrderRequest value,
          $Res Function(V1RejectOrderRequest) then) =
      _$V1RejectOrderRequestCopyWithImpl<$Res, V1RejectOrderRequest>;
  @useResult
  $Res call({String orderId, String reason});
}

/// @nodoc
class _$V1RejectOrderRequestCopyWithImpl<$Res,
        $Val extends V1RejectOrderRequest>
    implements $V1RejectOrderRequestCopyWith<$Res> {
  _$V1RejectOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1RejectOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1RejectOrderRequestImplCopyWith<$Res>
    implements $V1RejectOrderRequestCopyWith<$Res> {
  factory _$$V1RejectOrderRequestImplCopyWith(_$V1RejectOrderRequestImpl value,
          $Res Function(_$V1RejectOrderRequestImpl) then) =
      __$$V1RejectOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, String reason});
}

/// @nodoc
class __$$V1RejectOrderRequestImplCopyWithImpl<$Res>
    extends _$V1RejectOrderRequestCopyWithImpl<$Res, _$V1RejectOrderRequestImpl>
    implements _$$V1RejectOrderRequestImplCopyWith<$Res> {
  __$$V1RejectOrderRequestImplCopyWithImpl(_$V1RejectOrderRequestImpl _value,
      $Res Function(_$V1RejectOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1RejectOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? reason = null,
  }) {
    return _then(_$V1RejectOrderRequestImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1RejectOrderRequestImpl implements _V1RejectOrderRequest {
  const _$V1RejectOrderRequestImpl(
      {required this.orderId, required this.reason});

  factory _$V1RejectOrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1RejectOrderRequestImplFromJson(json);

  @override
  final String orderId;
  @override
  final String reason;

  @override
  String toString() {
    return 'V1RejectOrderRequest(orderId: $orderId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1RejectOrderRequestImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, reason);

  /// Create a copy of V1RejectOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1RejectOrderRequestImplCopyWith<_$V1RejectOrderRequestImpl>
      get copyWith =>
          __$$V1RejectOrderRequestImplCopyWithImpl<_$V1RejectOrderRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1RejectOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _V1RejectOrderRequest implements V1RejectOrderRequest {
  const factory _V1RejectOrderRequest(
      {required final String orderId,
      required final String reason}) = _$V1RejectOrderRequestImpl;

  factory _V1RejectOrderRequest.fromJson(Map<String, dynamic> json) =
      _$V1RejectOrderRequestImpl.fromJson;

  @override
  String get orderId;
  @override
  String get reason;

  /// Create a copy of V1RejectOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1RejectOrderRequestImplCopyWith<_$V1RejectOrderRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
