// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_remove_custom_validation_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1RemoveCustomValidationDataRequest
    _$V1RemoveCustomValidationDataRequestFromJson(Map<String, dynamic> json) {
  return _V1RemoveCustomValidationDataRequest.fromJson(json);
}

/// @nodoc
mixin _$V1RemoveCustomValidationDataRequest {
  String get dataId => throw _privateConstructorUsedError;

  /// Serializes this V1RemoveCustomValidationDataRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1RemoveCustomValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1RemoveCustomValidationDataRequestCopyWith<
          V1RemoveCustomValidationDataRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1RemoveCustomValidationDataRequestCopyWith<$Res> {
  factory $V1RemoveCustomValidationDataRequestCopyWith(
          V1RemoveCustomValidationDataRequest value,
          $Res Function(V1RemoveCustomValidationDataRequest) then) =
      _$V1RemoveCustomValidationDataRequestCopyWithImpl<$Res,
          V1RemoveCustomValidationDataRequest>;
  @useResult
  $Res call({String dataId});
}

/// @nodoc
class _$V1RemoveCustomValidationDataRequestCopyWithImpl<$Res,
        $Val extends V1RemoveCustomValidationDataRequest>
    implements $V1RemoveCustomValidationDataRequestCopyWith<$Res> {
  _$V1RemoveCustomValidationDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1RemoveCustomValidationDataRequest
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
abstract class _$$V1RemoveCustomValidationDataRequestImplCopyWith<$Res>
    implements $V1RemoveCustomValidationDataRequestCopyWith<$Res> {
  factory _$$V1RemoveCustomValidationDataRequestImplCopyWith(
          _$V1RemoveCustomValidationDataRequestImpl value,
          $Res Function(_$V1RemoveCustomValidationDataRequestImpl) then) =
      __$$V1RemoveCustomValidationDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dataId});
}

/// @nodoc
class __$$V1RemoveCustomValidationDataRequestImplCopyWithImpl<$Res>
    extends _$V1RemoveCustomValidationDataRequestCopyWithImpl<$Res,
        _$V1RemoveCustomValidationDataRequestImpl>
    implements _$$V1RemoveCustomValidationDataRequestImplCopyWith<$Res> {
  __$$V1RemoveCustomValidationDataRequestImplCopyWithImpl(
      _$V1RemoveCustomValidationDataRequestImpl _value,
      $Res Function(_$V1RemoveCustomValidationDataRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1RemoveCustomValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
  }) {
    return _then(_$V1RemoveCustomValidationDataRequestImpl(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1RemoveCustomValidationDataRequestImpl
    implements _V1RemoveCustomValidationDataRequest {
  const _$V1RemoveCustomValidationDataRequestImpl({required this.dataId});

  factory _$V1RemoveCustomValidationDataRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1RemoveCustomValidationDataRequestImplFromJson(json);

  @override
  final String dataId;

  @override
  String toString() {
    return 'V1RemoveCustomValidationDataRequest(dataId: $dataId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1RemoveCustomValidationDataRequestImpl &&
            (identical(other.dataId, dataId) || other.dataId == dataId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dataId);

  /// Create a copy of V1RemoveCustomValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1RemoveCustomValidationDataRequestImplCopyWith<
          _$V1RemoveCustomValidationDataRequestImpl>
      get copyWith => __$$V1RemoveCustomValidationDataRequestImplCopyWithImpl<
          _$V1RemoveCustomValidationDataRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1RemoveCustomValidationDataRequestImplToJson(
      this,
    );
  }
}

abstract class _V1RemoveCustomValidationDataRequest
    implements V1RemoveCustomValidationDataRequest {
  const factory _V1RemoveCustomValidationDataRequest(
          {required final String dataId}) =
      _$V1RemoveCustomValidationDataRequestImpl;

  factory _V1RemoveCustomValidationDataRequest.fromJson(
          Map<String, dynamic> json) =
      _$V1RemoveCustomValidationDataRequestImpl.fromJson;

  @override
  String get dataId;

  /// Create a copy of V1RemoveCustomValidationDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1RemoveCustomValidationDataRequestImplCopyWith<
          _$V1RemoveCustomValidationDataRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
