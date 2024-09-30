// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_on_ramp_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1OnRampData _$V1OnRampDataFromJson(Map<String, dynamic> json) {
  return _V1OnRampData.fromJson(json);
}

/// @nodoc
mixin _$V1OnRampData {
  String get cryptoAmount => throw _privateConstructorUsedError;
  String get cryptoCurrency => throw _privateConstructorUsedError;
  String get fiatAmount => throw _privateConstructorUsedError;
  String get fiatCurrency => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get bankAccount => throw _privateConstructorUsedError;

  /// Serializes this V1OnRampData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1OnRampData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1OnRampDataCopyWith<V1OnRampData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1OnRampDataCopyWith<$Res> {
  factory $V1OnRampDataCopyWith(
          V1OnRampData value, $Res Function(V1OnRampData) then) =
      _$V1OnRampDataCopyWithImpl<$Res, V1OnRampData>;
  @useResult
  $Res call(
      {String cryptoAmount,
      String cryptoCurrency,
      String fiatAmount,
      String fiatCurrency,
      String bankName,
      String bankAccount});
}

/// @nodoc
class _$V1OnRampDataCopyWithImpl<$Res, $Val extends V1OnRampData>
    implements $V1OnRampDataCopyWith<$Res> {
  _$V1OnRampDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1OnRampData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoAmount = null,
    Object? cryptoCurrency = null,
    Object? fiatAmount = null,
    Object? fiatCurrency = null,
    Object? bankName = null,
    Object? bankAccount = null,
  }) {
    return _then(_value.copyWith(
      cryptoAmount: null == cryptoAmount
          ? _value.cryptoAmount
          : cryptoAmount // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoCurrency: null == cryptoCurrency
          ? _value.cryptoCurrency
          : cryptoCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      fiatAmount: null == fiatAmount
          ? _value.fiatAmount
          : fiatAmount // ignore: cast_nullable_to_non_nullable
              as String,
      fiatCurrency: null == fiatCurrency
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccount: null == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1OnRampDataImplCopyWith<$Res>
    implements $V1OnRampDataCopyWith<$Res> {
  factory _$$V1OnRampDataImplCopyWith(
          _$V1OnRampDataImpl value, $Res Function(_$V1OnRampDataImpl) then) =
      __$$V1OnRampDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cryptoAmount,
      String cryptoCurrency,
      String fiatAmount,
      String fiatCurrency,
      String bankName,
      String bankAccount});
}

/// @nodoc
class __$$V1OnRampDataImplCopyWithImpl<$Res>
    extends _$V1OnRampDataCopyWithImpl<$Res, _$V1OnRampDataImpl>
    implements _$$V1OnRampDataImplCopyWith<$Res> {
  __$$V1OnRampDataImplCopyWithImpl(
      _$V1OnRampDataImpl _value, $Res Function(_$V1OnRampDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1OnRampData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoAmount = null,
    Object? cryptoCurrency = null,
    Object? fiatAmount = null,
    Object? fiatCurrency = null,
    Object? bankName = null,
    Object? bankAccount = null,
  }) {
    return _then(_$V1OnRampDataImpl(
      cryptoAmount: null == cryptoAmount
          ? _value.cryptoAmount
          : cryptoAmount // ignore: cast_nullable_to_non_nullable
              as String,
      cryptoCurrency: null == cryptoCurrency
          ? _value.cryptoCurrency
          : cryptoCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      fiatAmount: null == fiatAmount
          ? _value.fiatAmount
          : fiatAmount // ignore: cast_nullable_to_non_nullable
              as String,
      fiatCurrency: null == fiatCurrency
          ? _value.fiatCurrency
          : fiatCurrency // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccount: null == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1OnRampDataImpl implements _V1OnRampData {
  const _$V1OnRampDataImpl(
      {required this.cryptoAmount,
      required this.cryptoCurrency,
      required this.fiatAmount,
      required this.fiatCurrency,
      required this.bankName,
      required this.bankAccount});

  factory _$V1OnRampDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1OnRampDataImplFromJson(json);

  @override
  final String cryptoAmount;
  @override
  final String cryptoCurrency;
  @override
  final String fiatAmount;
  @override
  final String fiatCurrency;
  @override
  final String bankName;
  @override
  final String bankAccount;

  @override
  String toString() {
    return 'V1OnRampData(cryptoAmount: $cryptoAmount, cryptoCurrency: $cryptoCurrency, fiatAmount: $fiatAmount, fiatCurrency: $fiatCurrency, bankName: $bankName, bankAccount: $bankAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1OnRampDataImpl &&
            (identical(other.cryptoAmount, cryptoAmount) ||
                other.cryptoAmount == cryptoAmount) &&
            (identical(other.cryptoCurrency, cryptoCurrency) ||
                other.cryptoCurrency == cryptoCurrency) &&
            (identical(other.fiatAmount, fiatAmount) ||
                other.fiatAmount == fiatAmount) &&
            (identical(other.fiatCurrency, fiatCurrency) ||
                other.fiatCurrency == fiatCurrency) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankAccount, bankAccount) ||
                other.bankAccount == bankAccount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cryptoAmount, cryptoCurrency,
      fiatAmount, fiatCurrency, bankName, bankAccount);

  /// Create a copy of V1OnRampData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1OnRampDataImplCopyWith<_$V1OnRampDataImpl> get copyWith =>
      __$$V1OnRampDataImplCopyWithImpl<_$V1OnRampDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1OnRampDataImplToJson(
      this,
    );
  }
}

abstract class _V1OnRampData implements V1OnRampData {
  const factory _V1OnRampData(
      {required final String cryptoAmount,
      required final String cryptoCurrency,
      required final String fiatAmount,
      required final String fiatCurrency,
      required final String bankName,
      required final String bankAccount}) = _$V1OnRampDataImpl;

  factory _V1OnRampData.fromJson(Map<String, dynamic> json) =
      _$V1OnRampDataImpl.fromJson;

  @override
  String get cryptoAmount;
  @override
  String get cryptoCurrency;
  @override
  String get fiatAmount;
  @override
  String get fiatCurrency;
  @override
  String get bankName;
  @override
  String get bankAccount;

  /// Create a copy of V1OnRampData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1OnRampDataImplCopyWith<_$V1OnRampDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
