// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_granted_access_partners_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetGrantedAccessPartnersResponse _$V1GetGrantedAccessPartnersResponseFromJson(
    Map<String, dynamic> json) {
  return _V1GetGrantedAccessPartnersResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetGrantedAccessPartnersResponse {
  List<V1GetPartnerInfoResponse> get partners =>
      throw _privateConstructorUsedError;

  /// Serializes this V1GetGrantedAccessPartnersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetGrantedAccessPartnersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetGrantedAccessPartnersResponseCopyWith<
          V1GetGrantedAccessPartnersResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetGrantedAccessPartnersResponseCopyWith<$Res> {
  factory $V1GetGrantedAccessPartnersResponseCopyWith(
          V1GetGrantedAccessPartnersResponse value,
          $Res Function(V1GetGrantedAccessPartnersResponse) then) =
      _$V1GetGrantedAccessPartnersResponseCopyWithImpl<$Res,
          V1GetGrantedAccessPartnersResponse>;
  @useResult
  $Res call({List<V1GetPartnerInfoResponse> partners});
}

/// @nodoc
class _$V1GetGrantedAccessPartnersResponseCopyWithImpl<$Res,
        $Val extends V1GetGrantedAccessPartnersResponse>
    implements $V1GetGrantedAccessPartnersResponseCopyWith<$Res> {
  _$V1GetGrantedAccessPartnersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetGrantedAccessPartnersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partners = null,
  }) {
    return _then(_value.copyWith(
      partners: null == partners
          ? _value.partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<V1GetPartnerInfoResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetGrantedAccessPartnersResponseImplCopyWith<$Res>
    implements $V1GetGrantedAccessPartnersResponseCopyWith<$Res> {
  factory _$$V1GetGrantedAccessPartnersResponseImplCopyWith(
          _$V1GetGrantedAccessPartnersResponseImpl value,
          $Res Function(_$V1GetGrantedAccessPartnersResponseImpl) then) =
      __$$V1GetGrantedAccessPartnersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<V1GetPartnerInfoResponse> partners});
}

/// @nodoc
class __$$V1GetGrantedAccessPartnersResponseImplCopyWithImpl<$Res>
    extends _$V1GetGrantedAccessPartnersResponseCopyWithImpl<$Res,
        _$V1GetGrantedAccessPartnersResponseImpl>
    implements _$$V1GetGrantedAccessPartnersResponseImplCopyWith<$Res> {
  __$$V1GetGrantedAccessPartnersResponseImplCopyWithImpl(
      _$V1GetGrantedAccessPartnersResponseImpl _value,
      $Res Function(_$V1GetGrantedAccessPartnersResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetGrantedAccessPartnersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partners = null,
  }) {
    return _then(_$V1GetGrantedAccessPartnersResponseImpl(
      partners: null == partners
          ? _value._partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<V1GetPartnerInfoResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetGrantedAccessPartnersResponseImpl
    implements _V1GetGrantedAccessPartnersResponse {
  const _$V1GetGrantedAccessPartnersResponseImpl(
      {required final List<V1GetPartnerInfoResponse> partners})
      : _partners = partners;

  factory _$V1GetGrantedAccessPartnersResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1GetGrantedAccessPartnersResponseImplFromJson(json);

  final List<V1GetPartnerInfoResponse> _partners;
  @override
  List<V1GetPartnerInfoResponse> get partners {
    if (_partners is EqualUnmodifiableListView) return _partners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_partners);
  }

  @override
  String toString() {
    return 'V1GetGrantedAccessPartnersResponse(partners: $partners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetGrantedAccessPartnersResponseImpl &&
            const DeepCollectionEquality().equals(other._partners, _partners));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_partners));

  /// Create a copy of V1GetGrantedAccessPartnersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetGrantedAccessPartnersResponseImplCopyWith<
          _$V1GetGrantedAccessPartnersResponseImpl>
      get copyWith => __$$V1GetGrantedAccessPartnersResponseImplCopyWithImpl<
          _$V1GetGrantedAccessPartnersResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetGrantedAccessPartnersResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetGrantedAccessPartnersResponse
    implements V1GetGrantedAccessPartnersResponse {
  const factory _V1GetGrantedAccessPartnersResponse(
          {required final List<V1GetPartnerInfoResponse> partners}) =
      _$V1GetGrantedAccessPartnersResponseImpl;

  factory _V1GetGrantedAccessPartnersResponse.fromJson(
          Map<String, dynamic> json) =
      _$V1GetGrantedAccessPartnersResponseImpl.fromJson;

  @override
  List<V1GetPartnerInfoResponse> get partners;

  /// Create a copy of V1GetGrantedAccessPartnersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetGrantedAccessPartnersResponseImplCopyWith<
          _$V1GetGrantedAccessPartnersResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
