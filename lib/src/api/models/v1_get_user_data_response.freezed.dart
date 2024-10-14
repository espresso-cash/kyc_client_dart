// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_user_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetUserDataResponse _$V1GetUserDataResponseFromJson(
    Map<String, dynamic> json) {
  return _V1GetUserDataResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetUserDataResponse {
  List<V1UserDataField> get userData => throw _privateConstructorUsedError;
  List<V1ValidationDataField> get validationData =>
      throw _privateConstructorUsedError;

  /// Serializes this V1GetUserDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetUserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetUserDataResponseCopyWith<V1GetUserDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetUserDataResponseCopyWith<$Res> {
  factory $V1GetUserDataResponseCopyWith(V1GetUserDataResponse value,
          $Res Function(V1GetUserDataResponse) then) =
      _$V1GetUserDataResponseCopyWithImpl<$Res, V1GetUserDataResponse>;
  @useResult
  $Res call(
      {List<V1UserDataField> userData,
      List<V1ValidationDataField> validationData});
}

/// @nodoc
class _$V1GetUserDataResponseCopyWithImpl<$Res,
        $Val extends V1GetUserDataResponse>
    implements $V1GetUserDataResponseCopyWith<$Res> {
  _$V1GetUserDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetUserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? validationData = null,
  }) {
    return _then(_value.copyWith(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as List<V1UserDataField>,
      validationData: null == validationData
          ? _value.validationData
          : validationData // ignore: cast_nullable_to_non_nullable
              as List<V1ValidationDataField>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetUserDataResponseImplCopyWith<$Res>
    implements $V1GetUserDataResponseCopyWith<$Res> {
  factory _$$V1GetUserDataResponseImplCopyWith(
          _$V1GetUserDataResponseImpl value,
          $Res Function(_$V1GetUserDataResponseImpl) then) =
      __$$V1GetUserDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<V1UserDataField> userData,
      List<V1ValidationDataField> validationData});
}

/// @nodoc
class __$$V1GetUserDataResponseImplCopyWithImpl<$Res>
    extends _$V1GetUserDataResponseCopyWithImpl<$Res,
        _$V1GetUserDataResponseImpl>
    implements _$$V1GetUserDataResponseImplCopyWith<$Res> {
  __$$V1GetUserDataResponseImplCopyWithImpl(_$V1GetUserDataResponseImpl _value,
      $Res Function(_$V1GetUserDataResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetUserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? validationData = null,
  }) {
    return _then(_$V1GetUserDataResponseImpl(
      userData: null == userData
          ? _value._userData
          : userData // ignore: cast_nullable_to_non_nullable
              as List<V1UserDataField>,
      validationData: null == validationData
          ? _value._validationData
          : validationData // ignore: cast_nullable_to_non_nullable
              as List<V1ValidationDataField>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetUserDataResponseImpl implements _V1GetUserDataResponse {
  const _$V1GetUserDataResponseImpl(
      {required final List<V1UserDataField> userData,
      required final List<V1ValidationDataField> validationData})
      : _userData = userData,
        _validationData = validationData;

  factory _$V1GetUserDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetUserDataResponseImplFromJson(json);

  final List<V1UserDataField> _userData;
  @override
  List<V1UserDataField> get userData {
    if (_userData is EqualUnmodifiableListView) return _userData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userData);
  }

  final List<V1ValidationDataField> _validationData;
  @override
  List<V1ValidationDataField> get validationData {
    if (_validationData is EqualUnmodifiableListView) return _validationData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_validationData);
  }

  @override
  String toString() {
    return 'V1GetUserDataResponse(userData: $userData, validationData: $validationData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetUserDataResponseImpl &&
            const DeepCollectionEquality().equals(other._userData, _userData) &&
            const DeepCollectionEquality()
                .equals(other._validationData, _validationData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userData),
      const DeepCollectionEquality().hash(_validationData));

  /// Create a copy of V1GetUserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetUserDataResponseImplCopyWith<_$V1GetUserDataResponseImpl>
      get copyWith => __$$V1GetUserDataResponseImplCopyWithImpl<
          _$V1GetUserDataResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetUserDataResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetUserDataResponse implements V1GetUserDataResponse {
  const factory _V1GetUserDataResponse(
          {required final List<V1UserDataField> userData,
          required final List<V1ValidationDataField> validationData}) =
      _$V1GetUserDataResponseImpl;

  factory _V1GetUserDataResponse.fromJson(Map<String, dynamic> json) =
      _$V1GetUserDataResponseImpl.fromJson;

  @override
  List<V1UserDataField> get userData;
  @override
  List<V1ValidationDataField> get validationData;

  /// Create a copy of V1GetUserDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetUserDataResponseImplCopyWith<_$V1GetUserDataResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
