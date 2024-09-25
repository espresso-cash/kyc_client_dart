// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_partner_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetPartnerInfoResponse _$V1GetPartnerInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _V1GetPartnerInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetPartnerInfoResponse {
  String get name => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;

  /// Serializes this V1GetPartnerInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetPartnerInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetPartnerInfoResponseCopyWith<V1GetPartnerInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetPartnerInfoResponseCopyWith<$Res> {
  factory $V1GetPartnerInfoResponseCopyWith(V1GetPartnerInfoResponse value,
          $Res Function(V1GetPartnerInfoResponse) then) =
      _$V1GetPartnerInfoResponseCopyWithImpl<$Res, V1GetPartnerInfoResponse>;
  @useResult
  $Res call({String name, String publicKey});
}

/// @nodoc
class _$V1GetPartnerInfoResponseCopyWithImpl<$Res,
        $Val extends V1GetPartnerInfoResponse>
    implements $V1GetPartnerInfoResponseCopyWith<$Res> {
  _$V1GetPartnerInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetPartnerInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetPartnerInfoResponseImplCopyWith<$Res>
    implements $V1GetPartnerInfoResponseCopyWith<$Res> {
  factory _$$V1GetPartnerInfoResponseImplCopyWith(
          _$V1GetPartnerInfoResponseImpl value,
          $Res Function(_$V1GetPartnerInfoResponseImpl) then) =
      __$$V1GetPartnerInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String publicKey});
}

/// @nodoc
class __$$V1GetPartnerInfoResponseImplCopyWithImpl<$Res>
    extends _$V1GetPartnerInfoResponseCopyWithImpl<$Res,
        _$V1GetPartnerInfoResponseImpl>
    implements _$$V1GetPartnerInfoResponseImplCopyWith<$Res> {
  __$$V1GetPartnerInfoResponseImplCopyWithImpl(
      _$V1GetPartnerInfoResponseImpl _value,
      $Res Function(_$V1GetPartnerInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetPartnerInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publicKey = null,
  }) {
    return _then(_$V1GetPartnerInfoResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetPartnerInfoResponseImpl implements _V1GetPartnerInfoResponse {
  const _$V1GetPartnerInfoResponseImpl(
      {required this.name, required this.publicKey});

  factory _$V1GetPartnerInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetPartnerInfoResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String publicKey;

  @override
  String toString() {
    return 'V1GetPartnerInfoResponse(name: $name, publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetPartnerInfoResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, publicKey);

  /// Create a copy of V1GetPartnerInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetPartnerInfoResponseImplCopyWith<_$V1GetPartnerInfoResponseImpl>
      get copyWith => __$$V1GetPartnerInfoResponseImplCopyWithImpl<
          _$V1GetPartnerInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetPartnerInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetPartnerInfoResponse implements V1GetPartnerInfoResponse {
  const factory _V1GetPartnerInfoResponse(
      {required final String name,
      required final String publicKey}) = _$V1GetPartnerInfoResponseImpl;

  factory _V1GetPartnerInfoResponse.fromJson(Map<String, dynamic> json) =
      _$V1GetPartnerInfoResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get publicKey;

  /// Create a copy of V1GetPartnerInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetPartnerInfoResponseImplCopyWith<_$V1GetPartnerInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
