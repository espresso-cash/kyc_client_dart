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

GetPartnerInfoRequestDto _$GetPartnerInfoRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _GetPartnerInfoRequestDto.fromJson(json);
}

/// @nodoc
mixin _$GetPartnerInfoRequestDto {
  String get id => throw _privateConstructorUsedError;

  /// Serializes this GetPartnerInfoRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPartnerInfoRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPartnerInfoRequestDtoCopyWith<GetPartnerInfoRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPartnerInfoRequestDtoCopyWith<$Res> {
  factory $GetPartnerInfoRequestDtoCopyWith(GetPartnerInfoRequestDto value,
          $Res Function(GetPartnerInfoRequestDto) then) =
      _$GetPartnerInfoRequestDtoCopyWithImpl<$Res, GetPartnerInfoRequestDto>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$GetPartnerInfoRequestDtoCopyWithImpl<$Res,
        $Val extends GetPartnerInfoRequestDto>
    implements $GetPartnerInfoRequestDtoCopyWith<$Res> {
  _$GetPartnerInfoRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPartnerInfoRequestDto
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
abstract class _$$GetPartnerInfoRequestDtoImplCopyWith<$Res>
    implements $GetPartnerInfoRequestDtoCopyWith<$Res> {
  factory _$$GetPartnerInfoRequestDtoImplCopyWith(
          _$GetPartnerInfoRequestDtoImpl value,
          $Res Function(_$GetPartnerInfoRequestDtoImpl) then) =
      __$$GetPartnerInfoRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetPartnerInfoRequestDtoImplCopyWithImpl<$Res>
    extends _$GetPartnerInfoRequestDtoCopyWithImpl<$Res,
        _$GetPartnerInfoRequestDtoImpl>
    implements _$$GetPartnerInfoRequestDtoImplCopyWith<$Res> {
  __$$GetPartnerInfoRequestDtoImplCopyWithImpl(
      _$GetPartnerInfoRequestDtoImpl _value,
      $Res Function(_$GetPartnerInfoRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPartnerInfoRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetPartnerInfoRequestDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPartnerInfoRequestDtoImpl implements _GetPartnerInfoRequestDto {
  const _$GetPartnerInfoRequestDtoImpl({required this.id});

  factory _$GetPartnerInfoRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPartnerInfoRequestDtoImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'GetPartnerInfoRequestDto(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPartnerInfoRequestDtoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of GetPartnerInfoRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPartnerInfoRequestDtoImplCopyWith<_$GetPartnerInfoRequestDtoImpl>
      get copyWith => __$$GetPartnerInfoRequestDtoImplCopyWithImpl<
          _$GetPartnerInfoRequestDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPartnerInfoRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _GetPartnerInfoRequestDto implements GetPartnerInfoRequestDto {
  const factory _GetPartnerInfoRequestDto({required final String id}) =
      _$GetPartnerInfoRequestDtoImpl;

  factory _GetPartnerInfoRequestDto.fromJson(Map<String, dynamic> json) =
      _$GetPartnerInfoRequestDtoImpl.fromJson;

  @override
  String get id;

  /// Create a copy of GetPartnerInfoRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPartnerInfoRequestDtoImplCopyWith<_$GetPartnerInfoRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SetDataRequestDto _$SetDataRequestDtoFromJson(Map<String, dynamic> json) {
  return _SetDataRequestDto.fromJson(json);
}

/// @nodoc
mixin _$SetDataRequestDto {
  List<DataEntry> get data => throw _privateConstructorUsedError;

  /// Serializes this SetDataRequestDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetDataRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetDataRequestDtoCopyWith<SetDataRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetDataRequestDtoCopyWith<$Res> {
  factory $SetDataRequestDtoCopyWith(
          SetDataRequestDto value, $Res Function(SetDataRequestDto) then) =
      _$SetDataRequestDtoCopyWithImpl<$Res, SetDataRequestDto>;
  @useResult
  $Res call({List<DataEntry> data});
}

/// @nodoc
class _$SetDataRequestDtoCopyWithImpl<$Res, $Val extends SetDataRequestDto>
    implements $SetDataRequestDtoCopyWith<$Res> {
  _$SetDataRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetDataRequestDto
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
              as List<DataEntry>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetDataRequestDtoImplCopyWith<$Res>
    implements $SetDataRequestDtoCopyWith<$Res> {
  factory _$$SetDataRequestDtoImplCopyWith(_$SetDataRequestDtoImpl value,
          $Res Function(_$SetDataRequestDtoImpl) then) =
      __$$SetDataRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DataEntry> data});
}

/// @nodoc
class __$$SetDataRequestDtoImplCopyWithImpl<$Res>
    extends _$SetDataRequestDtoCopyWithImpl<$Res, _$SetDataRequestDtoImpl>
    implements _$$SetDataRequestDtoImplCopyWith<$Res> {
  __$$SetDataRequestDtoImplCopyWithImpl(_$SetDataRequestDtoImpl _value,
      $Res Function(_$SetDataRequestDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetDataRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SetDataRequestDtoImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetDataRequestDtoImpl implements _SetDataRequestDto {
  const _$SetDataRequestDtoImpl({required final List<DataEntry> data})
      : _data = data;

  factory _$SetDataRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetDataRequestDtoImplFromJson(json);

  final List<DataEntry> _data;
  @override
  List<DataEntry> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SetDataRequestDto(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDataRequestDtoImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SetDataRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDataRequestDtoImplCopyWith<_$SetDataRequestDtoImpl> get copyWith =>
      __$$SetDataRequestDtoImplCopyWithImpl<_$SetDataRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetDataRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _SetDataRequestDto implements SetDataRequestDto {
  const factory _SetDataRequestDto({required final List<DataEntry> data}) =
      _$SetDataRequestDtoImpl;

  factory _SetDataRequestDto.fromJson(Map<String, dynamic> json) =
      _$SetDataRequestDtoImpl.fromJson;

  @override
  List<DataEntry> get data;

  /// Create a copy of SetDataRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDataRequestDtoImplCopyWith<_$SetDataRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataEntry _$DataEntryFromJson(Map<String, dynamic> json) {
  return _DataEntry.fromJson(json);
}

/// @nodoc
mixin _$DataEntry {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this DataEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataEntryCopyWith<DataEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataEntryCopyWith<$Res> {
  factory $DataEntryCopyWith(DataEntry value, $Res Function(DataEntry) then) =
      _$DataEntryCopyWithImpl<$Res, DataEntry>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$DataEntryCopyWithImpl<$Res, $Val extends DataEntry>
    implements $DataEntryCopyWith<$Res> {
  _$DataEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataEntryImplCopyWith<$Res>
    implements $DataEntryCopyWith<$Res> {
  factory _$$DataEntryImplCopyWith(
          _$DataEntryImpl value, $Res Function(_$DataEntryImpl) then) =
      __$$DataEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$DataEntryImplCopyWithImpl<$Res>
    extends _$DataEntryCopyWithImpl<$Res, _$DataEntryImpl>
    implements _$$DataEntryImplCopyWith<$Res> {
  __$$DataEntryImplCopyWithImpl(
      _$DataEntryImpl _value, $Res Function(_$DataEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$DataEntryImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataEntryImpl implements _DataEntry {
  const _$DataEntryImpl({required this.key, required this.value});

  factory _$DataEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataEntryImplFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'DataEntry(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataEntryImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  /// Create a copy of DataEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataEntryImplCopyWith<_$DataEntryImpl> get copyWith =>
      __$$DataEntryImplCopyWithImpl<_$DataEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataEntryImplToJson(
      this,
    );
  }
}

abstract class _DataEntry implements DataEntry {
  const factory _DataEntry(
      {required final String key,
      required final String value}) = _$DataEntryImpl;

  factory _DataEntry.fromJson(Map<String, dynamic> json) =
      _$DataEntryImpl.fromJson;

  @override
  String get key;
  @override
  String get value;

  /// Create a copy of DataEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataEntryImplCopyWith<_$DataEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileUrlResponseDto _$FileUrlResponseDtoFromJson(Map<String, dynamic> json) {
  return _FileUrlResponseDto.fromJson(json);
}

/// @nodoc
mixin _$FileUrlResponseDto {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this FileUrlResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileUrlResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileUrlResponseDtoCopyWith<FileUrlResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUrlResponseDtoCopyWith<$Res> {
  factory $FileUrlResponseDtoCopyWith(
          FileUrlResponseDto value, $Res Function(FileUrlResponseDto) then) =
      _$FileUrlResponseDtoCopyWithImpl<$Res, FileUrlResponseDto>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$FileUrlResponseDtoCopyWithImpl<$Res, $Val extends FileUrlResponseDto>
    implements $FileUrlResponseDtoCopyWith<$Res> {
  _$FileUrlResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileUrlResponseDto
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
abstract class _$$FileUrlResponseDtoImplCopyWith<$Res>
    implements $FileUrlResponseDtoCopyWith<$Res> {
  factory _$$FileUrlResponseDtoImplCopyWith(_$FileUrlResponseDtoImpl value,
          $Res Function(_$FileUrlResponseDtoImpl) then) =
      __$$FileUrlResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$FileUrlResponseDtoImplCopyWithImpl<$Res>
    extends _$FileUrlResponseDtoCopyWithImpl<$Res, _$FileUrlResponseDtoImpl>
    implements _$$FileUrlResponseDtoImplCopyWith<$Res> {
  __$$FileUrlResponseDtoImplCopyWithImpl(_$FileUrlResponseDtoImpl _value,
      $Res Function(_$FileUrlResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileUrlResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$FileUrlResponseDtoImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileUrlResponseDtoImpl implements _FileUrlResponseDto {
  const _$FileUrlResponseDtoImpl({required this.url});

  factory _$FileUrlResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileUrlResponseDtoImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'FileUrlResponseDto(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileUrlResponseDtoImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of FileUrlResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileUrlResponseDtoImplCopyWith<_$FileUrlResponseDtoImpl> get copyWith =>
      __$$FileUrlResponseDtoImplCopyWithImpl<_$FileUrlResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileUrlResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _FileUrlResponseDto implements FileUrlResponseDto {
  const factory _FileUrlResponseDto({required final String url}) =
      _$FileUrlResponseDtoImpl;

  factory _FileUrlResponseDto.fromJson(Map<String, dynamic> json) =
      _$FileUrlResponseDtoImpl.fromJson;

  @override
  String get url;

  /// Create a copy of FileUrlResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileUrlResponseDtoImplCopyWith<_$FileUrlResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetDataResultDto _$GetDataResultDtoFromJson(Map<String, dynamic> json) {
  return _GetDataResultDto.fromJson(json);
}

/// @nodoc
mixin _$GetDataResultDto {
  List<DataEntry> get data => throw _privateConstructorUsedError;

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
  $Res call({List<DataEntry> data});
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
              as List<DataEntry>,
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
  $Res call({List<DataEntry> data});
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
              as List<DataEntry>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDataResultDtoImpl implements _GetDataResultDto {
  const _$GetDataResultDtoImpl({required final List<DataEntry> data})
      : _data = data;

  factory _$GetDataResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDataResultDtoImplFromJson(json);

  final List<DataEntry> _data;
  @override
  List<DataEntry> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
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
  const factory _GetDataResultDto({required final List<DataEntry> data}) =
      _$GetDataResultDtoImpl;

  factory _GetDataResultDto.fromJson(Map<String, dynamic> json) =
      _$GetDataResultDtoImpl.fromJson;

  @override
  List<DataEntry> get data;

  /// Create a copy of GetDataResultDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDataResultDtoImplCopyWith<_$GetDataResultDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidationRequestDto _$ValidationRequestDtoFromJson(Map<String, dynamic> json) {
  return _ValidationRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ValidationRequestDto {
  String get key => throw _privateConstructorUsedError;
  String get validator => throw _privateConstructorUsedError;

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
  $Res call({String key, String validator});
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
    Object? validator = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      validator: null == validator
          ? _value.validator
          : validator // ignore: cast_nullable_to_non_nullable
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
  $Res call({String key, String validator});
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
    Object? validator = null,
  }) {
    return _then(_$ValidationRequestDtoImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      validator: null == validator
          ? _value.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidationRequestDtoImpl implements _ValidationRequestDto {
  const _$ValidationRequestDtoImpl(
      {required this.key, required this.validator});

  factory _$ValidationRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationRequestDtoImplFromJson(json);

  @override
  final String key;
  @override
  final String validator;

  @override
  String toString() {
    return 'ValidationRequestDto(key: $key, validator: $validator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationRequestDtoImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.validator, validator) ||
                other.validator == validator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, validator);

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
      required final String validator}) = _$ValidationRequestDtoImpl;

  factory _ValidationRequestDto.fromJson(Map<String, dynamic> json) =
      _$ValidationRequestDtoImpl.fromJson;

  @override
  String get key;
  @override
  String get validator;

  /// Create a copy of ValidationRequestDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationRequestDtoImplCopyWith<_$ValidationRequestDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
