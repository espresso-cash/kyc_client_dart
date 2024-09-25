// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rpc_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RpcStatus _$RpcStatusFromJson(Map<String, dynamic> json) {
  return _RpcStatus.fromJson(json);
}

/// @nodoc
mixin _$RpcStatus {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ProtobufAny> get details => throw _privateConstructorUsedError;

  /// Serializes this RpcStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RpcStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RpcStatusCopyWith<RpcStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RpcStatusCopyWith<$Res> {
  factory $RpcStatusCopyWith(RpcStatus value, $Res Function(RpcStatus) then) =
      _$RpcStatusCopyWithImpl<$Res, RpcStatus>;
  @useResult
  $Res call({int code, String message, List<ProtobufAny> details});
}

/// @nodoc
class _$RpcStatusCopyWithImpl<$Res, $Val extends RpcStatus>
    implements $RpcStatusCopyWith<$Res> {
  _$RpcStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RpcStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ProtobufAny>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RpcStatusImplCopyWith<$Res>
    implements $RpcStatusCopyWith<$Res> {
  factory _$$RpcStatusImplCopyWith(
          _$RpcStatusImpl value, $Res Function(_$RpcStatusImpl) then) =
      __$$RpcStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, List<ProtobufAny> details});
}

/// @nodoc
class __$$RpcStatusImplCopyWithImpl<$Res>
    extends _$RpcStatusCopyWithImpl<$Res, _$RpcStatusImpl>
    implements _$$RpcStatusImplCopyWith<$Res> {
  __$$RpcStatusImplCopyWithImpl(
      _$RpcStatusImpl _value, $Res Function(_$RpcStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of RpcStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? details = null,
  }) {
    return _then(_$RpcStatusImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<ProtobufAny>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RpcStatusImpl implements _RpcStatus {
  const _$RpcStatusImpl(
      {required this.code,
      required this.message,
      required final List<ProtobufAny> details})
      : _details = details;

  factory _$RpcStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$RpcStatusImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  final List<ProtobufAny> _details;
  @override
  List<ProtobufAny> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'RpcStatus(code: $code, message: $message, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RpcStatusImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message,
      const DeepCollectionEquality().hash(_details));

  /// Create a copy of RpcStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RpcStatusImplCopyWith<_$RpcStatusImpl> get copyWith =>
      __$$RpcStatusImplCopyWithImpl<_$RpcStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RpcStatusImplToJson(
      this,
    );
  }
}

abstract class _RpcStatus implements RpcStatus {
  const factory _RpcStatus(
      {required final int code,
      required final String message,
      required final List<ProtobufAny> details}) = _$RpcStatusImpl;

  factory _RpcStatus.fromJson(Map<String, dynamic> json) =
      _$RpcStatusImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  List<ProtobufAny> get details;

  /// Create a copy of RpcStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RpcStatusImplCopyWith<_$RpcStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
