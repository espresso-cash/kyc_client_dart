// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_remove_user_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1RemoveUserDataRequest _$V1RemoveUserDataRequestFromJson(
    Map<String, dynamic> json) {
  return _V1RemoveUserDataRequest.fromJson(json);
}

/// @nodoc
mixin _$V1RemoveUserDataRequest {
  String get dataId => throw _privateConstructorUsedError;

  /// Serializes this V1RemoveUserDataRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1RemoveUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1RemoveUserDataRequestCopyWith<V1RemoveUserDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1RemoveUserDataRequestCopyWith<$Res> {
  factory $V1RemoveUserDataRequestCopyWith(V1RemoveUserDataRequest value,
          $Res Function(V1RemoveUserDataRequest) then) =
      _$V1RemoveUserDataRequestCopyWithImpl<$Res, V1RemoveUserDataRequest>;
  @useResult
  $Res call({String dataId});
}

/// @nodoc
class _$V1RemoveUserDataRequestCopyWithImpl<$Res,
        $Val extends V1RemoveUserDataRequest>
    implements $V1RemoveUserDataRequestCopyWith<$Res> {
  _$V1RemoveUserDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1RemoveUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
  }) {
    return _then(_value.copyWith(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1RemoveUserDataRequestImplCopyWith<$Res>
    implements $V1RemoveUserDataRequestCopyWith<$Res> {
  factory _$$V1RemoveUserDataRequestImplCopyWith(
          _$V1RemoveUserDataRequestImpl value,
          $Res Function(_$V1RemoveUserDataRequestImpl) then) =
      __$$V1RemoveUserDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dataId});
}

/// @nodoc
class __$$V1RemoveUserDataRequestImplCopyWithImpl<$Res>
    extends _$V1RemoveUserDataRequestCopyWithImpl<$Res,
        _$V1RemoveUserDataRequestImpl>
    implements _$$V1RemoveUserDataRequestImplCopyWith<$Res> {
  __$$V1RemoveUserDataRequestImplCopyWithImpl(
      _$V1RemoveUserDataRequestImpl _value,
      $Res Function(_$V1RemoveUserDataRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1RemoveUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
  }) {
    return _then(_$V1RemoveUserDataRequestImpl(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1RemoveUserDataRequestImpl implements _V1RemoveUserDataRequest {
  const _$V1RemoveUserDataRequestImpl({required this.dataId});

  factory _$V1RemoveUserDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1RemoveUserDataRequestImplFromJson(json);

  @override
  final String dataId;

  @override
  String toString() {
    return 'V1RemoveUserDataRequest(dataId: $dataId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1RemoveUserDataRequestImpl &&
            (identical(other.dataId, dataId) || other.dataId == dataId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dataId);

  /// Create a copy of V1RemoveUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1RemoveUserDataRequestImplCopyWith<_$V1RemoveUserDataRequestImpl>
      get copyWith => __$$V1RemoveUserDataRequestImplCopyWithImpl<
          _$V1RemoveUserDataRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1RemoveUserDataRequestImplToJson(
      this,
    );
  }
}

abstract class _V1RemoveUserDataRequest implements V1RemoveUserDataRequest {
  const factory _V1RemoveUserDataRequest({required final String dataId}) =
      _$V1RemoveUserDataRequestImpl;

  factory _V1RemoveUserDataRequest.fromJson(Map<String, dynamic> json) =
      _$V1RemoveUserDataRequestImpl.fromJson;

  @override
  String get dataId;

  /// Create a copy of V1RemoveUserDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1RemoveUserDataRequestImplCopyWith<_$V1RemoveUserDataRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
