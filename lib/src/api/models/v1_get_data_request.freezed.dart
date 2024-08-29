// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetDataRequest _$V1GetDataRequestFromJson(Map<String, dynamic> json) {
  return _V1GetDataRequest.fromJson(json);
}

/// @nodoc
mixin _$V1GetDataRequest {
  String get publicKey => throw _privateConstructorUsedError;

  /// Serializes this V1GetDataRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetDataRequestCopyWith<V1GetDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetDataRequestCopyWith<$Res> {
  factory $V1GetDataRequestCopyWith(
          V1GetDataRequest value, $Res Function(V1GetDataRequest) then) =
      _$V1GetDataRequestCopyWithImpl<$Res, V1GetDataRequest>;
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class _$V1GetDataRequestCopyWithImpl<$Res, $Val extends V1GetDataRequest>
    implements $V1GetDataRequestCopyWith<$Res> {
  _$V1GetDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetDataRequest
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
abstract class _$$V1GetDataRequestImplCopyWith<$Res>
    implements $V1GetDataRequestCopyWith<$Res> {
  factory _$$V1GetDataRequestImplCopyWith(_$V1GetDataRequestImpl value,
          $Res Function(_$V1GetDataRequestImpl) then) =
      __$$V1GetDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$$V1GetDataRequestImplCopyWithImpl<$Res>
    extends _$V1GetDataRequestCopyWithImpl<$Res, _$V1GetDataRequestImpl>
    implements _$$V1GetDataRequestImplCopyWith<$Res> {
  __$$V1GetDataRequestImplCopyWithImpl(_$V1GetDataRequestImpl _value,
      $Res Function(_$V1GetDataRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$V1GetDataRequestImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetDataRequestImpl implements _V1GetDataRequest {
  const _$V1GetDataRequestImpl({required this.publicKey});

  factory _$V1GetDataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetDataRequestImplFromJson(json);

  @override
  final String publicKey;

  @override
  String toString() {
    return 'V1GetDataRequest(publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetDataRequestImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  /// Create a copy of V1GetDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetDataRequestImplCopyWith<_$V1GetDataRequestImpl> get copyWith =>
      __$$V1GetDataRequestImplCopyWithImpl<_$V1GetDataRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetDataRequestImplToJson(
      this,
    );
  }
}

abstract class _V1GetDataRequest implements V1GetDataRequest {
  const factory _V1GetDataRequest({required final String publicKey}) =
      _$V1GetDataRequestImpl;

  factory _V1GetDataRequest.fromJson(Map<String, dynamic> json) =
      _$V1GetDataRequestImpl.fromJson;

  @override
  String get publicKey;

  /// Create a copy of V1GetDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetDataRequestImplCopyWith<_$V1GetDataRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
