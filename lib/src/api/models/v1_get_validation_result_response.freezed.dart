// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_validation_result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetValidationResultResponse _$V1GetValidationResultResponseFromJson(
    Map<String, dynamic> json) {
  return _V1GetValidationResultResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetValidationResultResponse {
  V1ValidationData get data => throw _privateConstructorUsedError;

  /// Serializes this V1GetValidationResultResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetValidationResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetValidationResultResponseCopyWith<V1GetValidationResultResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetValidationResultResponseCopyWith<$Res> {
  factory $V1GetValidationResultResponseCopyWith(
          V1GetValidationResultResponse value,
          $Res Function(V1GetValidationResultResponse) then) =
      _$V1GetValidationResultResponseCopyWithImpl<$Res,
          V1GetValidationResultResponse>;
  @useResult
  $Res call({V1ValidationData data});

  $V1ValidationDataCopyWith<$Res> get data;
}

/// @nodoc
class _$V1GetValidationResultResponseCopyWithImpl<$Res,
        $Val extends V1GetValidationResultResponse>
    implements $V1GetValidationResultResponseCopyWith<$Res> {
  _$V1GetValidationResultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetValidationResultResponse
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

  /// Create a copy of V1GetValidationResultResponse
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
abstract class _$$V1GetValidationResultResponseImplCopyWith<$Res>
    implements $V1GetValidationResultResponseCopyWith<$Res> {
  factory _$$V1GetValidationResultResponseImplCopyWith(
          _$V1GetValidationResultResponseImpl value,
          $Res Function(_$V1GetValidationResultResponseImpl) then) =
      __$$V1GetValidationResultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({V1ValidationData data});

  @override
  $V1ValidationDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$V1GetValidationResultResponseImplCopyWithImpl<$Res>
    extends _$V1GetValidationResultResponseCopyWithImpl<$Res,
        _$V1GetValidationResultResponseImpl>
    implements _$$V1GetValidationResultResponseImplCopyWith<$Res> {
  __$$V1GetValidationResultResponseImplCopyWithImpl(
      _$V1GetValidationResultResponseImpl _value,
      $Res Function(_$V1GetValidationResultResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetValidationResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$V1GetValidationResultResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as V1ValidationData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetValidationResultResponseImpl
    implements _V1GetValidationResultResponse {
  const _$V1GetValidationResultResponseImpl({required this.data});

  factory _$V1GetValidationResultResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1GetValidationResultResponseImplFromJson(json);

  @override
  final V1ValidationData data;

  @override
  String toString() {
    return 'V1GetValidationResultResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetValidationResultResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of V1GetValidationResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetValidationResultResponseImplCopyWith<
          _$V1GetValidationResultResponseImpl>
      get copyWith => __$$V1GetValidationResultResponseImplCopyWithImpl<
          _$V1GetValidationResultResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetValidationResultResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetValidationResultResponse
    implements V1GetValidationResultResponse {
  const factory _V1GetValidationResultResponse(
          {required final V1ValidationData data}) =
      _$V1GetValidationResultResponseImpl;

  factory _V1GetValidationResultResponse.fromJson(Map<String, dynamic> json) =
      _$V1GetValidationResultResponseImpl.fromJson;

  @override
  V1ValidationData get data;

  /// Create a copy of V1GetValidationResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetValidationResultResponseImplCopyWith<
          _$V1GetValidationResultResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
