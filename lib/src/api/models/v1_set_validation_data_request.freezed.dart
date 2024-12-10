// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_set_validation_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1SetValidationDataRequest _$V1SetValidationDataRequestFromJson(
    Map<String, dynamic> json) {
  return _V1SetValidationDataRequest.fromJson(json);
}

/// @nodoc
mixin _$V1SetValidationDataRequest {
  String get dataId => throw _privateConstructorUsedError;
  V1ValidationStatus get status => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;

  /// Serializes this V1SetValidationDataRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1SetValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1SetValidationDataRequestCopyWith<V1SetValidationDataRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1SetValidationDataRequestCopyWith<$Res> {
  factory $V1SetValidationDataRequestCopyWith(V1SetValidationDataRequest value,
          $Res Function(V1SetValidationDataRequest) then) =
      _$V1SetValidationDataRequestCopyWithImpl<$Res,
          V1SetValidationDataRequest>;
  @useResult
  $Res call(
      {String dataId,
      V1ValidationStatus status,
      String hash,
      String signature});
}

/// @nodoc
class _$V1SetValidationDataRequestCopyWithImpl<$Res,
        $Val extends V1SetValidationDataRequest>
    implements $V1SetValidationDataRequestCopyWith<$Res> {
  _$V1SetValidationDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1SetValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
    Object? status = null,
    Object? hash = null,
    Object? signature = null,
  }) {
    return _then(_value.copyWith(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as V1ValidationStatus,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1SetValidationDataRequestImplCopyWith<$Res>
    implements $V1SetValidationDataRequestCopyWith<$Res> {
  factory _$$V1SetValidationDataRequestImplCopyWith(
          _$V1SetValidationDataRequestImpl value,
          $Res Function(_$V1SetValidationDataRequestImpl) then) =
      __$$V1SetValidationDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dataId,
      V1ValidationStatus status,
      String hash,
      String signature});
}

/// @nodoc
class __$$V1SetValidationDataRequestImplCopyWithImpl<$Res>
    extends _$V1SetValidationDataRequestCopyWithImpl<$Res,
        _$V1SetValidationDataRequestImpl>
    implements _$$V1SetValidationDataRequestImplCopyWith<$Res> {
  __$$V1SetValidationDataRequestImplCopyWithImpl(
      _$V1SetValidationDataRequestImpl _value,
      $Res Function(_$V1SetValidationDataRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1SetValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
    Object? status = null,
    Object? hash = null,
    Object? signature = null,
  }) {
    return _then(_$V1SetValidationDataRequestImpl(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as V1ValidationStatus,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      signature: null == signature
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1SetValidationDataRequestImpl implements _V1SetValidationDataRequest {
  const _$V1SetValidationDataRequestImpl(
      {required this.dataId,
      required this.status,
      required this.hash,
      required this.signature});

  factory _$V1SetValidationDataRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1SetValidationDataRequestImplFromJson(json);

  @override
  final String dataId;
  @override
  final V1ValidationStatus status;
  @override
  final String hash;
  @override
  final String signature;

  @override
  String toString() {
    return 'V1SetValidationDataRequest(dataId: $dataId, status: $status, hash: $hash, signature: $signature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1SetValidationDataRequestImpl &&
            (identical(other.dataId, dataId) || other.dataId == dataId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.signature, signature) ||
                other.signature == signature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dataId, status, hash, signature);

  /// Create a copy of V1SetValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1SetValidationDataRequestImplCopyWith<_$V1SetValidationDataRequestImpl>
      get copyWith => __$$V1SetValidationDataRequestImplCopyWithImpl<
          _$V1SetValidationDataRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1SetValidationDataRequestImplToJson(
      this,
    );
  }
}

abstract class _V1SetValidationDataRequest
    implements V1SetValidationDataRequest {
  const factory _V1SetValidationDataRequest(
      {required final String dataId,
      required final V1ValidationStatus status,
      required final String hash,
      required final String signature}) = _$V1SetValidationDataRequestImpl;

  factory _V1SetValidationDataRequest.fromJson(Map<String, dynamic> json) =
      _$V1SetValidationDataRequestImpl.fromJson;

  @override
  String get dataId;
  @override
  V1ValidationStatus get status;
  @override
  String get hash;
  @override
  String get signature;

  /// Create a copy of V1SetValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1SetValidationDataRequestImplCopyWith<_$V1SetValidationDataRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
