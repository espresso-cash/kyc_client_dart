// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_init_document_validation_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1InitDocumentValidationRequest _$V1InitDocumentValidationRequestFromJson(
    Map<String, dynamic> json) {
  return _V1InitDocumentValidationRequest.fromJson(json);
}

/// @nodoc
mixin _$V1InitDocumentValidationRequest {
  String get name => throw _privateConstructorUsedError;
  String get document => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;
  String get selfieImage => throw _privateConstructorUsedError;

  /// Serializes this V1InitDocumentValidationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1InitDocumentValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1InitDocumentValidationRequestCopyWith<V1InitDocumentValidationRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1InitDocumentValidationRequestCopyWith<$Res> {
  factory $V1InitDocumentValidationRequestCopyWith(
          V1InitDocumentValidationRequest value,
          $Res Function(V1InitDocumentValidationRequest) then) =
      _$V1InitDocumentValidationRequestCopyWithImpl<$Res,
          V1InitDocumentValidationRequest>;
  @useResult
  $Res call(
      {String name, String document, String birthDate, String selfieImage});
}

/// @nodoc
class _$V1InitDocumentValidationRequestCopyWithImpl<$Res,
        $Val extends V1InitDocumentValidationRequest>
    implements $V1InitDocumentValidationRequestCopyWith<$Res> {
  _$V1InitDocumentValidationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1InitDocumentValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? document = null,
    Object? birthDate = null,
    Object? selfieImage = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      selfieImage: null == selfieImage
          ? _value.selfieImage
          : selfieImage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1InitDocumentValidationRequestImplCopyWith<$Res>
    implements $V1InitDocumentValidationRequestCopyWith<$Res> {
  factory _$$V1InitDocumentValidationRequestImplCopyWith(
          _$V1InitDocumentValidationRequestImpl value,
          $Res Function(_$V1InitDocumentValidationRequestImpl) then) =
      __$$V1InitDocumentValidationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String document, String birthDate, String selfieImage});
}

/// @nodoc
class __$$V1InitDocumentValidationRequestImplCopyWithImpl<$Res>
    extends _$V1InitDocumentValidationRequestCopyWithImpl<$Res,
        _$V1InitDocumentValidationRequestImpl>
    implements _$$V1InitDocumentValidationRequestImplCopyWith<$Res> {
  __$$V1InitDocumentValidationRequestImplCopyWithImpl(
      _$V1InitDocumentValidationRequestImpl _value,
      $Res Function(_$V1InitDocumentValidationRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1InitDocumentValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? document = null,
    Object? birthDate = null,
    Object? selfieImage = null,
  }) {
    return _then(_$V1InitDocumentValidationRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      selfieImage: null == selfieImage
          ? _value.selfieImage
          : selfieImage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1InitDocumentValidationRequestImpl
    implements _V1InitDocumentValidationRequest {
  const _$V1InitDocumentValidationRequestImpl(
      {required this.name,
      required this.document,
      required this.birthDate,
      required this.selfieImage});

  factory _$V1InitDocumentValidationRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$V1InitDocumentValidationRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String document;
  @override
  final String birthDate;
  @override
  final String selfieImage;

  @override
  String toString() {
    return 'V1InitDocumentValidationRequest(name: $name, document: $document, birthDate: $birthDate, selfieImage: $selfieImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1InitDocumentValidationRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.selfieImage, selfieImage) ||
                other.selfieImage == selfieImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, document, birthDate, selfieImage);

  /// Create a copy of V1InitDocumentValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1InitDocumentValidationRequestImplCopyWith<
          _$V1InitDocumentValidationRequestImpl>
      get copyWith => __$$V1InitDocumentValidationRequestImplCopyWithImpl<
          _$V1InitDocumentValidationRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1InitDocumentValidationRequestImplToJson(
      this,
    );
  }
}

abstract class _V1InitDocumentValidationRequest
    implements V1InitDocumentValidationRequest {
  const factory _V1InitDocumentValidationRequest(
          {required final String name,
          required final String document,
          required final String birthDate,
          required final String selfieImage}) =
      _$V1InitDocumentValidationRequestImpl;

  factory _V1InitDocumentValidationRequest.fromJson(Map<String, dynamic> json) =
      _$V1InitDocumentValidationRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get document;
  @override
  String get birthDate;
  @override
  String get selfieImage;

  /// Create a copy of V1InitDocumentValidationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1InitDocumentValidationRequestImplCopyWith<
          _$V1InitDocumentValidationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
