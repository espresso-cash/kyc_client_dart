// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_validation_result_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetValidationResultRequest _$V1GetValidationResultRequestFromJson(
    Map<String, dynamic> json) {
  return _V1GetValidationResultRequest.fromJson(json);
}

/// @nodoc
mixin _$V1GetValidationResultRequest {
  String get publicKey => throw _privateConstructorUsedError;

  /// Serializes this V1GetValidationResultRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetValidationResultRequestCopyWith<V1GetValidationResultRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetValidationResultRequestCopyWith<$Res> {
  factory $V1GetValidationResultRequestCopyWith(
          V1GetValidationResultRequest value,
          $Res Function(V1GetValidationResultRequest) then) =
      _$V1GetValidationResultRequestCopyWithImpl<$Res,
          V1GetValidationResultRequest>;
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class _$V1GetValidationResultRequestCopyWithImpl<$Res,
        $Val extends V1GetValidationResultRequest>
    implements $V1GetValidationResultRequestCopyWith<$Res> {
  _$V1GetValidationResultRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetValidationResultRequestImplCopyWith<$Res>
    implements $V1GetValidationResultRequestCopyWith<$Res> {
  factory _$$V1GetValidationResultRequestImplCopyWith(
          _$V1GetValidationResultRequestImpl value,
          $Res Function(_$V1GetValidationResultRequestImpl) then) =
      __$$V1GetValidationResultRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$$V1GetValidationResultRequestImplCopyWithImpl<$Res>
    extends _$V1GetValidationResultRequestCopyWithImpl<$Res,
        _$V1GetValidationResultRequestImpl>
    implements _$$V1GetValidationResultRequestImplCopyWith<$Res> {
  __$$V1GetValidationResultRequestImplCopyWithImpl(
      _$V1GetValidationResultRequestImpl _value,
      $Res Function(_$V1GetValidationResultRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$V1GetValidationResultRequestImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetValidationResultRequestImpl
    implements _V1GetValidationResultRequest {
  const _$V1GetValidationResultRequestImpl({required this.publicKey});

  factory _$V1GetValidationResultRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1GetValidationResultRequestImplFromJson(json);

  @override
  final String publicKey;

  @override
  String toString() {
    return 'V1GetValidationResultRequest(publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetValidationResultRequestImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  /// Create a copy of V1GetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetValidationResultRequestImplCopyWith<
          _$V1GetValidationResultRequestImpl>
      get copyWith => __$$V1GetValidationResultRequestImplCopyWithImpl<
          _$V1GetValidationResultRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetValidationResultRequestImplToJson(
      this,
    );
  }
}

abstract class _V1GetValidationResultRequest
    implements V1GetValidationResultRequest {
  const factory _V1GetValidationResultRequest(
      {required final String publicKey}) = _$V1GetValidationResultRequestImpl;

  factory _V1GetValidationResultRequest.fromJson(Map<String, dynamic> json) =
      _$V1GetValidationResultRequestImpl.fromJson;

  @override
  String get publicKey;

  /// Create a copy of V1GetValidationResultRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetValidationResultRequestImplCopyWith<
          _$V1GetValidationResultRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
