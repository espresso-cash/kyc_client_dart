// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_set_validation_result_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1SetValidationResultRequest _$V1SetValidationResultRequestFromJson(
    Map<String, dynamic> json) {
  return _V1SetValidationResultRequest.fromJson(json);
}

/// @nodoc
mixin _$V1SetValidationResultRequest {
  V1ValidationData get data => throw _privateConstructorUsedError;

  /// Serializes this V1SetValidationResultRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1SetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1SetValidationResultRequestCopyWith<V1SetValidationResultRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1SetValidationResultRequestCopyWith<$Res> {
  factory $V1SetValidationResultRequestCopyWith(
          V1SetValidationResultRequest value,
          $Res Function(V1SetValidationResultRequest) then) =
      _$V1SetValidationResultRequestCopyWithImpl<$Res,
          V1SetValidationResultRequest>;
  @useResult
  $Res call({V1ValidationData data});

  $V1ValidationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$V1SetValidationResultRequestCopyWithImpl<$Res,
        $Val extends V1SetValidationResultRequest>
    implements $V1SetValidationResultRequestCopyWith<$Res> {
  _$V1SetValidationResultRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1SetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as V1ValidationData,
    ) as $Val);
  }

  /// Create a copy of V1SetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $V1ValidationDataCopyWith<$Res> get data {
    return $V1ValidationDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$V1SetValidationResultRequestImplCopyWith<$Res>
    implements $V1SetValidationResultRequestCopyWith<$Res> {
  factory _$$V1SetValidationResultRequestImplCopyWith(
          _$V1SetValidationResultRequestImpl value,
          $Res Function(_$V1SetValidationResultRequestImpl) then) =
      __$$V1SetValidationResultRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({V1ValidationData data});

  @override
  $V1ValidationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$V1SetValidationResultRequestImplCopyWithImpl<$Res>
    extends _$V1SetValidationResultRequestCopyWithImpl<$Res,
        _$V1SetValidationResultRequestImpl>
    implements _$$V1SetValidationResultRequestImplCopyWith<$Res> {
  __$$V1SetValidationResultRequestImplCopyWithImpl(
      _$V1SetValidationResultRequestImpl _value,
      $Res Function(_$V1SetValidationResultRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1SetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$V1SetValidationResultRequestImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as V1ValidationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1SetValidationResultRequestImpl
    implements _V1SetValidationResultRequest {
  const _$V1SetValidationResultRequestImpl({required this.data});

  factory _$V1SetValidationResultRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1SetValidationResultRequestImplFromJson(json);

  @override
  final V1ValidationData data;

  @override
  String toString() {
    return 'V1SetValidationResultRequest(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1SetValidationResultRequestImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of V1SetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1SetValidationResultRequestImplCopyWith<
          _$V1SetValidationResultRequestImpl>
      get copyWith => __$$V1SetValidationResultRequestImplCopyWithImpl<
          _$V1SetValidationResultRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1SetValidationResultRequestImplToJson(
      this,
    );
  }
}

abstract class _V1SetValidationResultRequest
    implements V1SetValidationResultRequest {
  const factory _V1SetValidationResultRequest(
          {required final V1ValidationData data}) =
      _$V1SetValidationResultRequestImpl;

  factory _V1SetValidationResultRequest.fromJson(Map<String, dynamic> json) =
      _$V1SetValidationResultRequestImpl.fromJson;

  @override
  V1ValidationData get data;

  /// Create a copy of V1SetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1SetValidationResultRequestImplCopyWith<
          _$V1SetValidationResultRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
