// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_partner_info_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetPartnerInfoRequest _$V1GetPartnerInfoRequestFromJson(
    Map<String, dynamic> json) {
  return _V1GetPartnerInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$V1GetPartnerInfoRequest {
  String get id => throw _privateConstructorUsedError;

  /// Serializes this V1GetPartnerInfoRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetPartnerInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetPartnerInfoRequestCopyWith<V1GetPartnerInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetPartnerInfoRequestCopyWith<$Res> {
  factory $V1GetPartnerInfoRequestCopyWith(V1GetPartnerInfoRequest value,
          $Res Function(V1GetPartnerInfoRequest) then) =
      _$V1GetPartnerInfoRequestCopyWithImpl<$Res, V1GetPartnerInfoRequest>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$V1GetPartnerInfoRequestCopyWithImpl<$Res,
        $Val extends V1GetPartnerInfoRequest>
    implements $V1GetPartnerInfoRequestCopyWith<$Res> {
  _$V1GetPartnerInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetPartnerInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetPartnerInfoRequestImplCopyWith<$Res>
    implements $V1GetPartnerInfoRequestCopyWith<$Res> {
  factory _$$V1GetPartnerInfoRequestImplCopyWith(
          _$V1GetPartnerInfoRequestImpl value,
          $Res Function(_$V1GetPartnerInfoRequestImpl) then) =
      __$$V1GetPartnerInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$V1GetPartnerInfoRequestImplCopyWithImpl<$Res>
    extends _$V1GetPartnerInfoRequestCopyWithImpl<$Res,
        _$V1GetPartnerInfoRequestImpl>
    implements _$$V1GetPartnerInfoRequestImplCopyWith<$Res> {
  __$$V1GetPartnerInfoRequestImplCopyWithImpl(
      _$V1GetPartnerInfoRequestImpl _value,
      $Res Function(_$V1GetPartnerInfoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetPartnerInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$V1GetPartnerInfoRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetPartnerInfoRequestImpl implements _V1GetPartnerInfoRequest {
  const _$V1GetPartnerInfoRequestImpl({required this.id});

  factory _$V1GetPartnerInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetPartnerInfoRequestImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'V1GetPartnerInfoRequest(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetPartnerInfoRequestImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of V1GetPartnerInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetPartnerInfoRequestImplCopyWith<_$V1GetPartnerInfoRequestImpl>
      get copyWith => __$$V1GetPartnerInfoRequestImplCopyWithImpl<
          _$V1GetPartnerInfoRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetPartnerInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _V1GetPartnerInfoRequest implements V1GetPartnerInfoRequest {
  const factory _V1GetPartnerInfoRequest({required final String id}) =
      _$V1GetPartnerInfoRequestImpl;

  factory _V1GetPartnerInfoRequest.fromJson(Map<String, dynamic> json) =
      _$V1GetPartnerInfoRequestImpl.fromJson;

  @override
  String get id;

  /// Create a copy of V1GetPartnerInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetPartnerInfoRequestImplCopyWith<_$V1GetPartnerInfoRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
