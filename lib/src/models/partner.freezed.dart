// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartnerModel _$PartnerModelFromJson(Map<String, dynamic> json) {
  return _PartnerModel.fromJson(json);
}

/// @nodoc
mixin _$PartnerModel {
  String get name => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;

  /// Serializes this PartnerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartnerModelCopyWith<PartnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerModelCopyWith<$Res> {
  factory $PartnerModelCopyWith(
          PartnerModel value, $Res Function(PartnerModel) then) =
      _$PartnerModelCopyWithImpl<$Res, PartnerModel>;
  @useResult
  $Res call({String name, String publicKey});
}

/// @nodoc
class _$PartnerModelCopyWithImpl<$Res, $Val extends PartnerModel>
    implements $PartnerModelCopyWith<$Res> {
  _$PartnerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartnerModel
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
abstract class _$$PartnerModelImplCopyWith<$Res>
    implements $PartnerModelCopyWith<$Res> {
  factory _$$PartnerModelImplCopyWith(
          _$PartnerModelImpl value, $Res Function(_$PartnerModelImpl) then) =
      __$$PartnerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String publicKey});
}

/// @nodoc
class __$$PartnerModelImplCopyWithImpl<$Res>
    extends _$PartnerModelCopyWithImpl<$Res, _$PartnerModelImpl>
    implements _$$PartnerModelImplCopyWith<$Res> {
  __$$PartnerModelImplCopyWithImpl(
      _$PartnerModelImpl _value, $Res Function(_$PartnerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartnerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publicKey = null,
  }) {
    return _then(_$PartnerModelImpl(
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
class _$PartnerModelImpl implements _PartnerModel {
  _$PartnerModelImpl({required this.name, required this.publicKey});

  factory _$PartnerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerModelImplFromJson(json);

  @override
  final String name;
  @override
  final String publicKey;

  @override
  String toString() {
    return 'PartnerModel(name: $name, publicKey: $publicKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, publicKey);

  /// Create a copy of PartnerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerModelImplCopyWith<_$PartnerModelImpl> get copyWith =>
      __$$PartnerModelImplCopyWithImpl<_$PartnerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerModelImplToJson(
      this,
    );
  }
}

abstract class _PartnerModel implements PartnerModel {
  factory _PartnerModel(
      {required final String name,
      required final String publicKey}) = _$PartnerModelImpl;

  factory _PartnerModel.fromJson(Map<String, dynamic> json) =
      _$PartnerModelImpl.fromJson;

  @override
  String get name;
  @override
  String get publicKey;

  /// Create a copy of PartnerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartnerModelImplCopyWith<_$PartnerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
