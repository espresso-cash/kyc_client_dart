// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_init_phone_validation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1InitPhoneValidationRequest _$V1InitPhoneValidationRequestFromJson(
    Map<String, dynamic> json) {
  return _V1InitPhoneValidationRequest.fromJson(json);
}

/// @nodoc
mixin _$V1InitPhoneValidationRequest {
  String get dataId => throw _privateConstructorUsedError;

  /// Serializes this V1InitPhoneValidationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1InitPhoneValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1InitPhoneValidationRequestCopyWith<V1InitPhoneValidationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1InitPhoneValidationRequestCopyWith<$Res> {
  factory $V1InitPhoneValidationRequestCopyWith(
          V1InitPhoneValidationRequest value,
          $Res Function(V1InitPhoneValidationRequest) then) =
      _$V1InitPhoneValidationRequestCopyWithImpl<$Res,
          V1InitPhoneValidationRequest>;
  @useResult
  $Res call({String dataId});
}

/// @nodoc
class _$V1InitPhoneValidationRequestCopyWithImpl<$Res,
        $Val extends V1InitPhoneValidationRequest>
    implements $V1InitPhoneValidationRequestCopyWith<$Res> {
  _$V1InitPhoneValidationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1InitPhoneValidationRequest
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
abstract class _$$V1InitPhoneValidationRequestImplCopyWith<$Res>
    implements $V1InitPhoneValidationRequestCopyWith<$Res> {
  factory _$$V1InitPhoneValidationRequestImplCopyWith(
          _$V1InitPhoneValidationRequestImpl value,
          $Res Function(_$V1InitPhoneValidationRequestImpl) then) =
      __$$V1InitPhoneValidationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dataId});
}

/// @nodoc
class __$$V1InitPhoneValidationRequestImplCopyWithImpl<$Res>
    extends _$V1InitPhoneValidationRequestCopyWithImpl<$Res,
        _$V1InitPhoneValidationRequestImpl>
    implements _$$V1InitPhoneValidationRequestImplCopyWith<$Res> {
  __$$V1InitPhoneValidationRequestImplCopyWithImpl(
      _$V1InitPhoneValidationRequestImpl _value,
      $Res Function(_$V1InitPhoneValidationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1InitPhoneValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
  }) {
    return _then(_$V1InitPhoneValidationRequestImpl(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1InitPhoneValidationRequestImpl
    implements _V1InitPhoneValidationRequest {
  const _$V1InitPhoneValidationRequestImpl({required this.dataId});

  factory _$V1InitPhoneValidationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1InitPhoneValidationRequestImplFromJson(json);

  @override
  final String dataId;

  @override
  String toString() {
    return 'V1InitPhoneValidationRequest(dataId: $dataId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1InitPhoneValidationRequestImpl &&
            (identical(other.dataId, dataId) || other.dataId == dataId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dataId);

  /// Create a copy of V1InitPhoneValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1InitPhoneValidationRequestImplCopyWith<
          _$V1InitPhoneValidationRequestImpl>
      get copyWith => __$$V1InitPhoneValidationRequestImplCopyWithImpl<
          _$V1InitPhoneValidationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1InitPhoneValidationRequestImplToJson(
      this,
    );
  }
}

abstract class _V1InitPhoneValidationRequest
    implements V1InitPhoneValidationRequest {
  const factory _V1InitPhoneValidationRequest({required final String dataId}) =
      _$V1InitPhoneValidationRequestImpl;

  factory _V1InitPhoneValidationRequest.fromJson(Map<String, dynamic> json) =
      _$V1InitPhoneValidationRequestImpl.fromJson;

  @override
  String get dataId;

  /// Create a copy of V1InitPhoneValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1InitPhoneValidationRequestImplCopyWith<
          _$V1InitPhoneValidationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
