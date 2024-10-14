// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_fail_order_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1FailOrderRequest _$V1FailOrderRequestFromJson(Map<String, dynamic> json) {
  return _V1FailOrderRequest.fromJson(json);
}

/// @nodoc
mixin _$V1FailOrderRequest {
  String get orderId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get externalId => throw _privateConstructorUsedError;

  /// Serializes this V1FailOrderRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1FailOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1FailOrderRequestCopyWith<V1FailOrderRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1FailOrderRequestCopyWith<$Res> {
  factory $V1FailOrderRequestCopyWith(
          V1FailOrderRequest value, $Res Function(V1FailOrderRequest) then) =
      _$V1FailOrderRequestCopyWithImpl<$Res, V1FailOrderRequest>;
  @useResult
  $Res call({String orderId, String reason, String externalId});
}

/// @nodoc
class _$V1FailOrderRequestCopyWithImpl<$Res, $Val extends V1FailOrderRequest>
    implements $V1FailOrderRequestCopyWith<$Res> {
  _$V1FailOrderRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1FailOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? reason = null,
    Object? externalId = null,
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
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1FailOrderRequestImplCopyWith<$Res>
    implements $V1FailOrderRequestCopyWith<$Res> {
  factory _$$V1FailOrderRequestImplCopyWith(_$V1FailOrderRequestImpl value,
          $Res Function(_$V1FailOrderRequestImpl) then) =
      __$$V1FailOrderRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String orderId, String reason, String externalId});
}

/// @nodoc
class __$$V1FailOrderRequestImplCopyWithImpl<$Res>
    extends _$V1FailOrderRequestCopyWithImpl<$Res, _$V1FailOrderRequestImpl>
    implements _$$V1FailOrderRequestImplCopyWith<$Res> {
  __$$V1FailOrderRequestImplCopyWithImpl(_$V1FailOrderRequestImpl _value,
      $Res Function(_$V1FailOrderRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1FailOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? reason = null,
    Object? externalId = null,
  }) {
    return _then(_$V1FailOrderRequestImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      externalId: null == externalId
          ? _value.externalId
          : externalId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1FailOrderRequestImpl implements _V1FailOrderRequest {
  const _$V1FailOrderRequestImpl(
      {required this.orderId, required this.reason, required this.externalId});

  factory _$V1FailOrderRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1FailOrderRequestImplFromJson(json);

  @override
  final String orderId;
  @override
  final String reason;
  @override
  final String externalId;

  @override
  String toString() {
    return 'V1FailOrderRequest(orderId: $orderId, reason: $reason, externalId: $externalId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1FailOrderRequestImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.externalId, externalId) ||
                other.externalId == externalId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, reason, externalId);

  /// Create a copy of V1FailOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1FailOrderRequestImplCopyWith<_$V1FailOrderRequestImpl> get copyWith =>
      __$$V1FailOrderRequestImplCopyWithImpl<_$V1FailOrderRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1FailOrderRequestImplToJson(
      this,
    );
  }
}

abstract class _V1FailOrderRequest implements V1FailOrderRequest {
  const factory _V1FailOrderRequest(
      {required final String orderId,
      required final String reason,
      required final String externalId}) = _$V1FailOrderRequestImpl;

  factory _V1FailOrderRequest.fromJson(Map<String, dynamic> json) =
      _$V1FailOrderRequestImpl.fromJson;

  @override
  String get orderId;
  @override
  String get reason;
  @override
  String get externalId;

  /// Create a copy of V1FailOrderRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1FailOrderRequestImplCopyWith<_$V1FailOrderRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
