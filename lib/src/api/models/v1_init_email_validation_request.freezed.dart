// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_init_email_validation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1InitEmailValidationRequest _$V1InitEmailValidationRequestFromJson(
    Map<String, dynamic> json) {
  return _V1InitEmailValidationRequest.fromJson(json);
}

/// @nodoc
mixin _$V1InitEmailValidationRequest {
  String get dataId => throw _privateConstructorUsedError;

  /// Serializes this V1InitEmailValidationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1InitEmailValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1InitEmailValidationRequestCopyWith<V1InitEmailValidationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1InitEmailValidationRequestCopyWith<$Res> {
  factory $V1InitEmailValidationRequestCopyWith(
          V1InitEmailValidationRequest value,
          $Res Function(V1InitEmailValidationRequest) then) =
      _$V1InitEmailValidationRequestCopyWithImpl<$Res,
          V1InitEmailValidationRequest>;
  @useResult
  $Res call({String dataId});
}

/// @nodoc
class _$V1InitEmailValidationRequestCopyWithImpl<$Res,
        $Val extends V1InitEmailValidationRequest>
    implements $V1InitEmailValidationRequestCopyWith<$Res> {
  _$V1InitEmailValidationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1InitEmailValidationRequest
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
abstract class _$$V1InitEmailValidationRequestImplCopyWith<$Res>
    implements $V1InitEmailValidationRequestCopyWith<$Res> {
  factory _$$V1InitEmailValidationRequestImplCopyWith(
          _$V1InitEmailValidationRequestImpl value,
          $Res Function(_$V1InitEmailValidationRequestImpl) then) =
      __$$V1InitEmailValidationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String dataId});
}

/// @nodoc
class __$$V1InitEmailValidationRequestImplCopyWithImpl<$Res>
    extends _$V1InitEmailValidationRequestCopyWithImpl<$Res,
        _$V1InitEmailValidationRequestImpl>
    implements _$$V1InitEmailValidationRequestImplCopyWith<$Res> {
  __$$V1InitEmailValidationRequestImplCopyWithImpl(
      _$V1InitEmailValidationRequestImpl _value,
      $Res Function(_$V1InitEmailValidationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1InitEmailValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dataId = null,
  }) {
    return _then(_$V1InitEmailValidationRequestImpl(
      dataId: null == dataId
          ? _value.dataId
          : dataId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1InitEmailValidationRequestImpl
    implements _V1InitEmailValidationRequest {
  const _$V1InitEmailValidationRequestImpl({required this.dataId});

  factory _$V1InitEmailValidationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1InitEmailValidationRequestImplFromJson(json);

  @override
  final String dataId;

  @override
  String toString() {
    return 'V1InitEmailValidationRequest(dataId: $dataId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1InitEmailValidationRequestImpl &&
            (identical(other.dataId, dataId) || other.dataId == dataId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dataId);

  /// Create a copy of V1InitEmailValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1InitEmailValidationRequestImplCopyWith<
          _$V1InitEmailValidationRequestImpl>
      get copyWith => __$$V1InitEmailValidationRequestImplCopyWithImpl<
          _$V1InitEmailValidationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1InitEmailValidationRequestImplToJson(
      this,
    );
  }
}

abstract class _V1InitEmailValidationRequest
    implements V1InitEmailValidationRequest {
  const factory _V1InitEmailValidationRequest({required final String dataId}) =
      _$V1InitEmailValidationRequestImpl;

  factory _V1InitEmailValidationRequest.fromJson(Map<String, dynamic> json) =
      _$V1InitEmailValidationRequestImpl.fromJson;

  @override
  String get dataId;

  /// Create a copy of V1InitEmailValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1InitEmailValidationRequestImplCopyWith<
          _$V1InitEmailValidationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
