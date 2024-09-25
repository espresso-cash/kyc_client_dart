// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetDataResponse _$V1GetDataResponseFromJson(Map<String, dynamic> json) {
  return _V1GetDataResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetDataResponse {
  V1UserData get data => throw _privateConstructorUsedError;

  /// Serializes this V1GetDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetDataResponseCopyWith<V1GetDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetDataResponseCopyWith<$Res> {
  factory $V1GetDataResponseCopyWith(
          V1GetDataResponse value, $Res Function(V1GetDataResponse) then) =
      _$V1GetDataResponseCopyWithImpl<$Res, V1GetDataResponse>;
  @useResult
  $Res call({V1UserData data});

  $V1UserDataCopyWith<$Res> get data;
}

/// @nodoc
class _$V1GetDataResponseCopyWithImpl<$Res, $Val extends V1GetDataResponse>
    implements $V1GetDataResponseCopyWith<$Res> {
  _$V1GetDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetDataResponse
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
              as V1UserData,
    ) as $Val);
  }

  /// Create a copy of V1GetDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $V1UserDataCopyWith<$Res> get data {
    return $V1UserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$V1GetDataResponseImplCopyWith<$Res>
    implements $V1GetDataResponseCopyWith<$Res> {
  factory _$$V1GetDataResponseImplCopyWith(_$V1GetDataResponseImpl value,
          $Res Function(_$V1GetDataResponseImpl) then) =
      __$$V1GetDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({V1UserData data});

  @override
  $V1UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$V1GetDataResponseImplCopyWithImpl<$Res>
    extends _$V1GetDataResponseCopyWithImpl<$Res, _$V1GetDataResponseImpl>
    implements _$$V1GetDataResponseImplCopyWith<$Res> {
  __$$V1GetDataResponseImplCopyWithImpl(_$V1GetDataResponseImpl _value,
      $Res Function(_$V1GetDataResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$V1GetDataResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as V1UserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetDataResponseImpl implements _V1GetDataResponse {
  const _$V1GetDataResponseImpl({required this.data});

  factory _$V1GetDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetDataResponseImplFromJson(json);

  @override
  final V1UserData data;

  @override
  String toString() {
    return 'V1GetDataResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetDataResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of V1GetDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetDataResponseImplCopyWith<_$V1GetDataResponseImpl> get copyWith =>
      __$$V1GetDataResponseImplCopyWithImpl<_$V1GetDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetDataResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetDataResponse implements V1GetDataResponse {
  const factory _V1GetDataResponse({required final V1UserData data}) =
      _$V1GetDataResponseImpl;

  factory _V1GetDataResponse.fromJson(Map<String, dynamic> json) =
      _$V1GetDataResponseImpl.fromJson;

  @override
  V1UserData get data;

  /// Create a copy of V1GetDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetDataResponseImplCopyWith<_$V1GetDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
