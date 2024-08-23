// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protobuf_any.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProtobufAny _$ProtobufAnyFromJson(Map<String, dynamic> json) {
  return _ProtobufAny.fromJson(json);
}

/// @nodoc
mixin _$ProtobufAny {
  /// Incorrect name has been replaced. Original name: `@type`.
  @JsonKey(name: '@type')
  String get object0 => throw _privateConstructorUsedError;

  /// Serializes this ProtobufAny to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProtobufAny
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProtobufAnyCopyWith<ProtobufAny> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProtobufAnyCopyWith<$Res> {
  factory $ProtobufAnyCopyWith(
          ProtobufAny value, $Res Function(ProtobufAny) then) =
      _$ProtobufAnyCopyWithImpl<$Res, ProtobufAny>;
  @useResult
  $Res call({@JsonKey(name: '@type') String object0});
}

/// @nodoc
class _$ProtobufAnyCopyWithImpl<$Res, $Val extends ProtobufAny>
    implements $ProtobufAnyCopyWith<$Res> {
  _$ProtobufAnyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProtobufAny
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object0 = null,
  }) {
    return _then(_value.copyWith(
      object0: null == object0
          ? _value.object0
          : object0 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProtobufAnyImplCopyWith<$Res>
    implements $ProtobufAnyCopyWith<$Res> {
  factory _$$ProtobufAnyImplCopyWith(
          _$ProtobufAnyImpl value, $Res Function(_$ProtobufAnyImpl) then) =
      __$$ProtobufAnyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '@type') String object0});
}

/// @nodoc
class __$$ProtobufAnyImplCopyWithImpl<$Res>
    extends _$ProtobufAnyCopyWithImpl<$Res, _$ProtobufAnyImpl>
    implements _$$ProtobufAnyImplCopyWith<$Res> {
  __$$ProtobufAnyImplCopyWithImpl(
      _$ProtobufAnyImpl _value, $Res Function(_$ProtobufAnyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProtobufAny
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object0 = null,
  }) {
    return _then(_$ProtobufAnyImpl(
      object0: null == object0
          ? _value.object0
          : object0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProtobufAnyImpl implements _ProtobufAny {
  const _$ProtobufAnyImpl({@JsonKey(name: '@type') required this.object0});

  factory _$ProtobufAnyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProtobufAnyImplFromJson(json);

  /// Incorrect name has been replaced. Original name: `@type`.
  @override
  @JsonKey(name: '@type')
  final String object0;

  @override
  String toString() {
    return 'ProtobufAny(object0: $object0)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProtobufAnyImpl &&
            (identical(other.object0, object0) || other.object0 == object0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, object0);

  /// Create a copy of ProtobufAny
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProtobufAnyImplCopyWith<_$ProtobufAnyImpl> get copyWith =>
      __$$ProtobufAnyImplCopyWithImpl<_$ProtobufAnyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProtobufAnyImplToJson(
      this,
    );
  }
}

abstract class _ProtobufAny implements ProtobufAny {
  const factory _ProtobufAny(
          {@JsonKey(name: '@type') required final String object0}) =
      _$ProtobufAnyImpl;

  factory _ProtobufAny.fromJson(Map<String, dynamic> json) =
      _$ProtobufAnyImpl.fromJson;

  /// Incorrect name has been replaced. Original name: `@type`.
  @override
  @JsonKey(name: '@type')
  String get object0;

  /// Create a copy of ProtobufAny
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProtobufAnyImplCopyWith<_$ProtobufAnyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
