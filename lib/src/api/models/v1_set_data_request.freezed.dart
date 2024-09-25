// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_set_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1SetDataRequest _$V1SetDataRequestFromJson(Map<String, dynamic> json) {
  return _V1SetDataRequest.fromJson(json);
}

/// @nodoc
mixin _$V1SetDataRequest {
  V1UserData get data => throw _privateConstructorUsedError;

  /// Serializes this V1SetDataRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1SetDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1SetDataRequestCopyWith<V1SetDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1SetDataRequestCopyWith<$Res> {
  factory $V1SetDataRequestCopyWith(
          V1SetDataRequest value, $Res Function(V1SetDataRequest) then) =
      _$V1SetDataRequestCopyWithImpl<$Res, V1SetDataRequest>;
  @useResult
  $Res call({V1UserData data});

  $V1UserDataCopyWith<$Res> get data;
}

/// @nodoc
class _$V1SetDataRequestCopyWithImpl<$Res, $Val extends V1SetDataRequest>
    implements $V1SetDataRequestCopyWith<$Res> {
  _$V1SetDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1SetDataRequest
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

  /// Create a copy of V1SetDataRequest
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
abstract class _$$V1SetDataRequestImplCopyWith<$Res>
    implements $V1SetDataRequestCopyWith<$Res> {
  factory _$$V1SetDataRequestImplCopyWith(_$V1SetDataRequestImpl value,
          $Res Function(_$V1SetDataRequestImpl) then) =
      __$$V1SetDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({V1UserData data});

  @override
  $V1UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$V1SetDataRequestImplCopyWithImpl<$Res>
    extends _$V1SetDataRequestCopyWithImpl<$Res, _$V1SetDataRequestImpl>
    implements _$$V1SetDataRequestImplCopyWith<$Res> {
  __$$V1SetDataRequestImplCopyWithImpl(_$V1SetDataRequestImpl _value,
      $Res Function(_$V1SetDataRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1SetDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$V1SetDataRequestImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as V1UserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1SetDataRequestImpl implements _V1SetDataRequest {
  const _$V1SetDataRequestImpl({required this.data});

  factory _$V1SetDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1SetDataRequestImplFromJson(json);

  @override
  final V1UserData data;

  @override
  String toString() {
    return 'V1SetDataRequest(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1SetDataRequestImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of V1SetDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1SetDataRequestImplCopyWith<_$V1SetDataRequestImpl> get copyWith =>
      __$$V1SetDataRequestImplCopyWithImpl<_$V1SetDataRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1SetDataRequestImplToJson(
      this,
    );
  }
}

abstract class _V1SetDataRequest implements V1SetDataRequest {
  const factory _V1SetDataRequest({required final V1UserData data}) =
      _$V1SetDataRequestImpl;

  factory _V1SetDataRequest.fromJson(Map<String, dynamic> json) =
      _$V1SetDataRequestImpl.fromJson;

  @override
  V1UserData get data;

  /// Create a copy of V1SetDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1SetDataRequestImplCopyWith<_$V1SetDataRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
