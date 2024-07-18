// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitStorageRequest _$InitStorageRequestFromJson(Map<String, dynamic> json) {
  return _InitStorageRequest.fromJson(json);
}

/// @nodoc
mixin _$InitStorageRequest {
  String get walletAddress => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get encryptedSecretKey => throw _privateConstructorUsedError;
  String get walletProofMessage => throw _privateConstructorUsedError;
  String get walletProofSignature => throw _privateConstructorUsedError;

  /// Serializes this InitStorageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitStorageRequestCopyWith<InitStorageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitStorageRequestCopyWith<$Res> {
  factory $InitStorageRequestCopyWith(
          InitStorageRequest value, $Res Function(InitStorageRequest) then) =
      _$InitStorageRequestCopyWithImpl<$Res, InitStorageRequest>;
  @useResult
  $Res call(
      {String walletAddress,
      String message,
      String encryptedSecretKey,
      String walletProofMessage,
      String walletProofSignature});
}

/// @nodoc
class _$InitStorageRequestCopyWithImpl<$Res, $Val extends InitStorageRequest>
    implements $InitStorageRequestCopyWith<$Res> {
  _$InitStorageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? message = null,
    Object? encryptedSecretKey = null,
    Object? walletProofMessage = null,
    Object? walletProofSignature = null,
  }) {
    return _then(_value.copyWith(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedSecretKey: null == encryptedSecretKey
          ? _value.encryptedSecretKey
          : encryptedSecretKey // ignore: cast_nullable_to_non_nullable
              as String,
      walletProofMessage: null == walletProofMessage
          ? _value.walletProofMessage
          : walletProofMessage // ignore: cast_nullable_to_non_nullable
              as String,
      walletProofSignature: null == walletProofSignature
          ? _value.walletProofSignature
          : walletProofSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitStorageRequestImplCopyWith<$Res>
    implements $InitStorageRequestCopyWith<$Res> {
  factory _$$InitStorageRequestImplCopyWith(_$InitStorageRequestImpl value,
          $Res Function(_$InitStorageRequestImpl) then) =
      __$$InitStorageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletAddress,
      String message,
      String encryptedSecretKey,
      String walletProofMessage,
      String walletProofSignature});
}

/// @nodoc
class __$$InitStorageRequestImplCopyWithImpl<$Res>
    extends _$InitStorageRequestCopyWithImpl<$Res, _$InitStorageRequestImpl>
    implements _$$InitStorageRequestImplCopyWith<$Res> {
  __$$InitStorageRequestImplCopyWithImpl(_$InitStorageRequestImpl _value,
      $Res Function(_$InitStorageRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletAddress = null,
    Object? message = null,
    Object? encryptedSecretKey = null,
    Object? walletProofMessage = null,
    Object? walletProofSignature = null,
  }) {
    return _then(_$InitStorageRequestImpl(
      walletAddress: null == walletAddress
          ? _value.walletAddress
          : walletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      encryptedSecretKey: null == encryptedSecretKey
          ? _value.encryptedSecretKey
          : encryptedSecretKey // ignore: cast_nullable_to_non_nullable
              as String,
      walletProofMessage: null == walletProofMessage
          ? _value.walletProofMessage
          : walletProofMessage // ignore: cast_nullable_to_non_nullable
              as String,
      walletProofSignature: null == walletProofSignature
          ? _value.walletProofSignature
          : walletProofSignature // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitStorageRequestImpl implements _InitStorageRequest {
  const _$InitStorageRequestImpl(
      {required this.walletAddress,
      required this.message,
      required this.encryptedSecretKey,
      required this.walletProofMessage,
      required this.walletProofSignature});

  factory _$InitStorageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitStorageRequestImplFromJson(json);

  @override
  final String walletAddress;
  @override
  final String message;
  @override
  final String encryptedSecretKey;
  @override
  final String walletProofMessage;
  @override
  final String walletProofSignature;

  @override
  String toString() {
    return 'InitStorageRequest(walletAddress: $walletAddress, message: $message, encryptedSecretKey: $encryptedSecretKey, walletProofMessage: $walletProofMessage, walletProofSignature: $walletProofSignature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitStorageRequestImpl &&
            (identical(other.walletAddress, walletAddress) ||
                other.walletAddress == walletAddress) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.encryptedSecretKey, encryptedSecretKey) ||
                other.encryptedSecretKey == encryptedSecretKey) &&
            (identical(other.walletProofMessage, walletProofMessage) ||
                other.walletProofMessage == walletProofMessage) &&
            (identical(other.walletProofSignature, walletProofSignature) ||
                other.walletProofSignature == walletProofSignature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, walletAddress, message,
      encryptedSecretKey, walletProofMessage, walletProofSignature);

  /// Create a copy of InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitStorageRequestImplCopyWith<_$InitStorageRequestImpl> get copyWith =>
      __$$InitStorageRequestImplCopyWithImpl<_$InitStorageRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitStorageRequestImplToJson(
      this,
    );
  }
}

abstract class _InitStorageRequest implements InitStorageRequest {
  const factory _InitStorageRequest(
      {required final String walletAddress,
      required final String message,
      required final String encryptedSecretKey,
      required final String walletProofMessage,
      required final String walletProofSignature}) = _$InitStorageRequestImpl;

  factory _InitStorageRequest.fromJson(Map<String, dynamic> json) =
      _$InitStorageRequestImpl.fromJson;

  @override
  String get walletAddress;
  @override
  String get message;
  @override
  String get encryptedSecretKey;
  @override
  String get walletProofMessage;
  @override
  String get walletProofSignature;

  /// Create a copy of InitStorageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitStorageRequestImplCopyWith<_$InitStorageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnerModelDto _$PartnerModelDtoFromJson(Map<String, dynamic> json) {
  return _PartnerModelDto.fromJson(json);
}

/// @nodoc
mixin _$PartnerModelDto {
  PartnerModel get partner => throw _privateConstructorUsedError;

  /// Serializes this PartnerModelDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PartnerModelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PartnerModelDtoCopyWith<PartnerModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerModelDtoCopyWith<$Res> {
  factory $PartnerModelDtoCopyWith(
          PartnerModelDto value, $Res Function(PartnerModelDto) then) =
      _$PartnerModelDtoCopyWithImpl<$Res, PartnerModelDto>;
  @useResult
  $Res call({PartnerModel partner});

  $PartnerModelCopyWith<$Res> get partner;
}

/// @nodoc
class _$PartnerModelDtoCopyWithImpl<$Res, $Val extends PartnerModelDto>
    implements $PartnerModelDtoCopyWith<$Res> {
  _$PartnerModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartnerModelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partner = null,
  }) {
    return _then(_value.copyWith(
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerModel,
    ) as $Val);
  }

  /// Create a copy of PartnerModelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PartnerModelCopyWith<$Res> get partner {
    return $PartnerModelCopyWith<$Res>(_value.partner, (value) {
      return _then(_value.copyWith(partner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PartnerModelDtoImplCopyWith<$Res>
    implements $PartnerModelDtoCopyWith<$Res> {
  factory _$$PartnerModelDtoImplCopyWith(_$PartnerModelDtoImpl value,
          $Res Function(_$PartnerModelDtoImpl) then) =
      __$$PartnerModelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PartnerModel partner});

  @override
  $PartnerModelCopyWith<$Res> get partner;
}

/// @nodoc
class __$$PartnerModelDtoImplCopyWithImpl<$Res>
    extends _$PartnerModelDtoCopyWithImpl<$Res, _$PartnerModelDtoImpl>
    implements _$$PartnerModelDtoImplCopyWith<$Res> {
  __$$PartnerModelDtoImplCopyWithImpl(
      _$PartnerModelDtoImpl _value, $Res Function(_$PartnerModelDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartnerModelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? partner = null,
  }) {
    return _then(_$PartnerModelDtoImpl(
      partner: null == partner
          ? _value.partner
          : partner // ignore: cast_nullable_to_non_nullable
              as PartnerModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnerModelDtoImpl implements _PartnerModelDto {
  const _$PartnerModelDtoImpl({required this.partner});

  factory _$PartnerModelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerModelDtoImplFromJson(json);

  @override
  final PartnerModel partner;

  @override
  String toString() {
    return 'PartnerModelDto(partner: $partner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerModelDtoImpl &&
            (identical(other.partner, partner) || other.partner == partner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, partner);

  /// Create a copy of PartnerModelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerModelDtoImplCopyWith<_$PartnerModelDtoImpl> get copyWith =>
      __$$PartnerModelDtoImplCopyWithImpl<_$PartnerModelDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerModelDtoImplToJson(
      this,
    );
  }
}

abstract class _PartnerModelDto implements PartnerModelDto {
  const factory _PartnerModelDto({required final PartnerModel partner}) =
      _$PartnerModelDtoImpl;

  factory _PartnerModelDto.fromJson(Map<String, dynamic> json) =
      _$PartnerModelDtoImpl.fromJson;

  @override
  PartnerModel get partner;

  /// Create a copy of PartnerModelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PartnerModelDtoImplCopyWith<_$PartnerModelDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UploadUrlDto _$UploadUrlDtoFromJson(Map<String, dynamic> json) {
  return _UploadUrlDto.fromJson(json);
}

/// @nodoc
mixin _$UploadUrlDto {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this UploadUrlDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UploadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadUrlDtoCopyWith<UploadUrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadUrlDtoCopyWith<$Res> {
  factory $UploadUrlDtoCopyWith(
          UploadUrlDto value, $Res Function(UploadUrlDto) then) =
      _$UploadUrlDtoCopyWithImpl<$Res, UploadUrlDto>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$UploadUrlDtoCopyWithImpl<$Res, $Val extends UploadUrlDto>
    implements $UploadUrlDtoCopyWith<$Res> {
  _$UploadUrlDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadUrlDtoImplCopyWith<$Res>
    implements $UploadUrlDtoCopyWith<$Res> {
  factory _$$UploadUrlDtoImplCopyWith(
          _$UploadUrlDtoImpl value, $Res Function(_$UploadUrlDtoImpl) then) =
      __$$UploadUrlDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$UploadUrlDtoImplCopyWithImpl<$Res>
    extends _$UploadUrlDtoCopyWithImpl<$Res, _$UploadUrlDtoImpl>
    implements _$$UploadUrlDtoImplCopyWith<$Res> {
  __$$UploadUrlDtoImplCopyWithImpl(
      _$UploadUrlDtoImpl _value, $Res Function(_$UploadUrlDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UploadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$UploadUrlDtoImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadUrlDtoImpl implements _UploadUrlDto {
  const _$UploadUrlDtoImpl({required this.url});

  factory _$UploadUrlDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadUrlDtoImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'UploadUrlDto(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadUrlDtoImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of UploadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadUrlDtoImplCopyWith<_$UploadUrlDtoImpl> get copyWith =>
      __$$UploadUrlDtoImplCopyWithImpl<_$UploadUrlDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadUrlDtoImplToJson(
      this,
    );
  }
}

abstract class _UploadUrlDto implements UploadUrlDto {
  const factory _UploadUrlDto({required final String url}) = _$UploadUrlDtoImpl;

  factory _UploadUrlDto.fromJson(Map<String, dynamic> json) =
      _$UploadUrlDtoImpl.fromJson;

  @override
  String get url;

  /// Create a copy of UploadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadUrlDtoImplCopyWith<_$UploadUrlDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DownloadUrlDto _$DownloadUrlDtoFromJson(Map<String, dynamic> json) {
  return _DownloadUrlDto.fromJson(json);
}

/// @nodoc
mixin _$DownloadUrlDto {
  String get data => throw _privateConstructorUsedError;

  /// Serializes this DownloadUrlDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DownloadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadUrlDtoCopyWith<DownloadUrlDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadUrlDtoCopyWith<$Res> {
  factory $DownloadUrlDtoCopyWith(
          DownloadUrlDto value, $Res Function(DownloadUrlDto) then) =
      _$DownloadUrlDtoCopyWithImpl<$Res, DownloadUrlDto>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$DownloadUrlDtoCopyWithImpl<$Res, $Val extends DownloadUrlDto>
    implements $DownloadUrlDtoCopyWith<$Res> {
  _$DownloadUrlDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadUrlDtoImplCopyWith<$Res>
    implements $DownloadUrlDtoCopyWith<$Res> {
  factory _$$DownloadUrlDtoImplCopyWith(_$DownloadUrlDtoImpl value,
          $Res Function(_$DownloadUrlDtoImpl) then) =
      __$$DownloadUrlDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$DownloadUrlDtoImplCopyWithImpl<$Res>
    extends _$DownloadUrlDtoCopyWithImpl<$Res, _$DownloadUrlDtoImpl>
    implements _$$DownloadUrlDtoImplCopyWith<$Res> {
  __$$DownloadUrlDtoImplCopyWithImpl(
      _$DownloadUrlDtoImpl _value, $Res Function(_$DownloadUrlDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DownloadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DownloadUrlDtoImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DownloadUrlDtoImpl implements _DownloadUrlDto {
  const _$DownloadUrlDtoImpl({required this.data});

  factory _$DownloadUrlDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DownloadUrlDtoImplFromJson(json);

  @override
  final String data;

  @override
  String toString() {
    return 'DownloadUrlDto(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadUrlDtoImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of DownloadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadUrlDtoImplCopyWith<_$DownloadUrlDtoImpl> get copyWith =>
      __$$DownloadUrlDtoImplCopyWithImpl<_$DownloadUrlDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DownloadUrlDtoImplToJson(
      this,
    );
  }
}

abstract class _DownloadUrlDto implements DownloadUrlDto {
  const factory _DownloadUrlDto({required final String data}) =
      _$DownloadUrlDtoImpl;

  factory _DownloadUrlDto.fromJson(Map<String, dynamic> json) =
      _$DownloadUrlDtoImpl.fromJson;

  @override
  String get data;

  /// Create a copy of DownloadUrlDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadUrlDtoImplCopyWith<_$DownloadUrlDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetDataResultDto _$GetDataResultDtoFromJson(Map<String, dynamic> json) {
  return _GetDataResultDto.fromJson(json);
}

/// @nodoc
mixin _$GetDataResultDto {
  Map<String, String> get data => throw _privateConstructorUsedError;

  /// Serializes this GetDataResultDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetDataResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDataResultDtoCopyWith<GetDataResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataResultDtoCopyWith<$Res> {
  factory $GetDataResultDtoCopyWith(
          GetDataResultDto value, $Res Function(GetDataResultDto) then) =
      _$GetDataResultDtoCopyWithImpl<$Res, GetDataResultDto>;
  @useResult
  $Res call({Map<String, String> data});
}

/// @nodoc
class _$GetDataResultDtoCopyWithImpl<$Res, $Val extends GetDataResultDto>
    implements $GetDataResultDtoCopyWith<$Res> {
  _$GetDataResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDataResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDataResultDtoImplCopyWith<$Res>
    implements $GetDataResultDtoCopyWith<$Res> {
  factory _$$GetDataResultDtoImplCopyWith(_$GetDataResultDtoImpl value,
          $Res Function(_$GetDataResultDtoImpl) then) =
      __$$GetDataResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String> data});
}

/// @nodoc
class __$$GetDataResultDtoImplCopyWithImpl<$Res>
    extends _$GetDataResultDtoCopyWithImpl<$Res, _$GetDataResultDtoImpl>
    implements _$$GetDataResultDtoImplCopyWith<$Res> {
  __$$GetDataResultDtoImplCopyWithImpl(_$GetDataResultDtoImpl _value,
      $Res Function(_$GetDataResultDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetDataResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetDataResultDtoImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDataResultDtoImpl implements _GetDataResultDto {
  const _$GetDataResultDtoImpl({required final Map<String, String> data})
      : _data = data;

  factory _$GetDataResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDataResultDtoImplFromJson(json);

  final Map<String, String> _data;
  @override
  Map<String, String> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'GetDataResultDto(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataResultDtoImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of GetDataResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataResultDtoImplCopyWith<_$GetDataResultDtoImpl> get copyWith =>
      __$$GetDataResultDtoImplCopyWithImpl<_$GetDataResultDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDataResultDtoImplToJson(
      this,
    );
  }
}

abstract class _GetDataResultDto implements GetDataResultDto {
  const factory _GetDataResultDto({required final Map<String, String> data}) =
      _$GetDataResultDtoImpl;

  factory _GetDataResultDto.fromJson(Map<String, dynamic> json) =
      _$GetDataResultDtoImpl.fromJson;

  @override
  Map<String, String> get data;

  /// Create a copy of GetDataResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDataResultDtoImplCopyWith<_$GetDataResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationResultDto _$ValidationResultDtoFromJson(Map<String, dynamic> json) {
  return _ValidationResultDto.fromJson(json);
}

/// @nodoc
mixin _$ValidationResultDto {
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this ValidationResultDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationResultDtoCopyWith<ValidationResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationResultDtoCopyWith<$Res> {
  factory $ValidationResultDtoCopyWith(
          ValidationResultDto value, $Res Function(ValidationResultDto) then) =
      _$ValidationResultDtoCopyWithImpl<$Res, ValidationResultDto>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class _$ValidationResultDtoCopyWithImpl<$Res, $Val extends ValidationResultDto>
    implements $ValidationResultDtoCopyWith<$Res> {
  _$ValidationResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationResultDtoImplCopyWith<$Res>
    implements $ValidationResultDtoCopyWith<$Res> {
  factory _$$ValidationResultDtoImplCopyWith(_$ValidationResultDtoImpl value,
          $Res Function(_$ValidationResultDtoImpl) then) =
      __$$ValidationResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$ValidationResultDtoImplCopyWithImpl<$Res>
    extends _$ValidationResultDtoCopyWithImpl<$Res, _$ValidationResultDtoImpl>
    implements _$$ValidationResultDtoImplCopyWith<$Res> {
  __$$ValidationResultDtoImplCopyWithImpl(_$ValidationResultDtoImpl _value,
      $Res Function(_$ValidationResultDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ValidationResultDtoImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationResultDtoImpl implements _ValidationResultDto {
  const _$ValidationResultDtoImpl({required final Map<String, dynamic> data})
      : _data = data;

  factory _$ValidationResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationResultDtoImplFromJson(json);

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'ValidationResultDto(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationResultDtoImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ValidationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationResultDtoImplCopyWith<_$ValidationResultDtoImpl> get copyWith =>
      __$$ValidationResultDtoImplCopyWithImpl<_$ValidationResultDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationResultDtoImplToJson(
      this,
    );
  }
}

abstract class _ValidationResultDto implements ValidationResultDto {
  const factory _ValidationResultDto(
      {required final Map<String, dynamic> data}) = _$ValidationResultDtoImpl;

  factory _ValidationResultDto.fromJson(Map<String, dynamic> json) =
      _$ValidationResultDtoImpl.fromJson;

  @override
  Map<String, dynamic> get data;

  /// Create a copy of ValidationResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationResultDtoImplCopyWith<_$ValidationResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationRequestDto _$ValidationRequestDtoFromJson(Map<String, dynamic> json) {
  return _ValidationRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ValidationRequestDto {
  String get key => throw _privateConstructorUsedError;
  String get validatorPK => throw _privateConstructorUsedError;

  /// Serializes this ValidationRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationRequestDtoCopyWith<ValidationRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationRequestDtoCopyWith<$Res> {
  factory $ValidationRequestDtoCopyWith(ValidationRequestDto value,
          $Res Function(ValidationRequestDto) then) =
      _$ValidationRequestDtoCopyWithImpl<$Res, ValidationRequestDto>;
  @useResult
  $Res call({String key, String validatorPK});
}

/// @nodoc
class _$ValidationRequestDtoCopyWithImpl<$Res,
        $Val extends ValidationRequestDto>
    implements $ValidationRequestDtoCopyWith<$Res> {
  _$ValidationRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? validatorPK = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      validatorPK: null == validatorPK
          ? _value.validatorPK
          : validatorPK // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationRequestDtoImplCopyWith<$Res>
    implements $ValidationRequestDtoCopyWith<$Res> {
  factory _$$ValidationRequestDtoImplCopyWith(_$ValidationRequestDtoImpl value,
          $Res Function(_$ValidationRequestDtoImpl) then) =
      __$$ValidationRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String validatorPK});
}

/// @nodoc
class __$$ValidationRequestDtoImplCopyWithImpl<$Res>
    extends _$ValidationRequestDtoCopyWithImpl<$Res, _$ValidationRequestDtoImpl>
    implements _$$ValidationRequestDtoImplCopyWith<$Res> {
  __$$ValidationRequestDtoImplCopyWithImpl(_$ValidationRequestDtoImpl _value,
      $Res Function(_$ValidationRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? validatorPK = null,
  }) {
    return _then(_$ValidationRequestDtoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      validatorPK: null == validatorPK
          ? _value.validatorPK
          : validatorPK // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationRequestDtoImpl implements _ValidationRequestDto {
  const _$ValidationRequestDtoImpl(
      {required this.key, required this.validatorPK});

  factory _$ValidationRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationRequestDtoImplFromJson(json);

  @override
  final String key;
  @override
  final String validatorPK;

  @override
  String toString() {
    return 'ValidationRequestDto(key: $key, validatorPK: $validatorPK)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationRequestDtoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.validatorPK, validatorPK) ||
                other.validatorPK == validatorPK));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, validatorPK);

  /// Create a copy of ValidationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationRequestDtoImplCopyWith<_$ValidationRequestDtoImpl>
      get copyWith =>
          __$$ValidationRequestDtoImplCopyWithImpl<_$ValidationRequestDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _ValidationRequestDto implements ValidationRequestDto {
  const factory _ValidationRequestDto(
      {required final String key,
      required final String validatorPK}) = _$ValidationRequestDtoImpl;

  factory _ValidationRequestDto.fromJson(Map<String, dynamic> json) =
      _$ValidationRequestDtoImpl.fromJson;

  @override
  String get key;
  @override
  String get validatorPK;

  /// Create a copy of ValidationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationRequestDtoImplCopyWith<_$ValidationRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
