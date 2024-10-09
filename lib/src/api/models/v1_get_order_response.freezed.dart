// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'v1_get_order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

V1GetOrderResponse _$V1GetOrderResponseFromJson(Map<String, dynamic> json) {
  return _V1GetOrderResponse.fromJson(json);
}

/// @nodoc
mixin _$V1GetOrderResponse {
  String get orderId => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get partnerPublicKey => throw _privateConstructorUsedError;
  String get userPublicKey => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get cryptoAmount => throw _privateConstructorUsedError;
  String get cryptoCurrency => throw _privateConstructorUsedError;
  String get fiatAmount => throw _privateConstructorUsedError;
  String get fiatCurrency => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get bankAccount => throw _privateConstructorUsedError;
  String get cryptoWalletAddress => throw _privateConstructorUsedError;
  String get transaction => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;

  /// Serializes this V1GetOrderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $V1GetOrderResponseCopyWith<V1GetOrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $V1GetOrderResponseCopyWith<$Res> {
  factory $V1GetOrderResponseCopyWith(
          V1GetOrderResponse value, $Res Function(V1GetOrderResponse) then) =
      _$V1GetOrderResponseCopyWithImpl<$Res, V1GetOrderResponse>;
  @useResult
  $Res call(
      {String orderId,
      String created,
      String status,
      String partnerPublicKey,
      String userPublicKey,
      String comment,
      String type,
      String cryptoAmount,
      String cryptoCurrency,
      String fiatAmount,
      String fiatCurrency,
      String bankName,
      String bankAccount,
      String cryptoWalletAddress,
      String transaction,
      String transactionId});
}

/// @nodoc
class _$V1GetOrderResponseCopyWithImpl<$Res, $Val extends V1GetOrderResponse>
    implements $V1GetOrderResponseCopyWith<$Res> {
  _$V1GetOrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? created = null,
    Object? status = null,
    Object? partnerPublicKey = null,
    Object? userPublicKey = null,
    Object? comment = null,
    Object? type = null,
    Object? cryptoAmount = null,
    Object? cryptoCurrency = null,
    Object? fiatAmount = null,
    Object? fiatCurrency = null,
    Object? bankName = null,
    Object? bankAccount = null,
    Object? cryptoWalletAddress = null,
    Object? transaction = null,
    Object? transactionId = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      partnerPublicKey: null == partnerPublicKey
          ? _value.partnerPublicKey
          : partnerPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      userPublicKey: null == userPublicKey
          ? _value.userPublicKey
          : userPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
      cryptoWalletAddress: null == cryptoWalletAddress
          ? _value.cryptoWalletAddress
          : cryptoWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$V1GetOrderResponseImplCopyWith<$Res>
    implements $V1GetOrderResponseCopyWith<$Res> {
  factory _$$V1GetOrderResponseImplCopyWith(_$V1GetOrderResponseImpl value,
          $Res Function(_$V1GetOrderResponseImpl) then) =
      __$$V1GetOrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String created,
      String status,
      String partnerPublicKey,
      String userPublicKey,
      String comment,
      String type,
      String cryptoAmount,
      String cryptoCurrency,
      String fiatAmount,
      String fiatCurrency,
      String bankName,
      String bankAccount,
      String cryptoWalletAddress,
      String transaction,
      String transactionId});
}

/// @nodoc
class __$$V1GetOrderResponseImplCopyWithImpl<$Res>
    extends _$V1GetOrderResponseCopyWithImpl<$Res, _$V1GetOrderResponseImpl>
    implements _$$V1GetOrderResponseImplCopyWith<$Res> {
  __$$V1GetOrderResponseImplCopyWithImpl(_$V1GetOrderResponseImpl _value,
      $Res Function(_$V1GetOrderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? created = null,
    Object? status = null,
    Object? partnerPublicKey = null,
    Object? userPublicKey = null,
    Object? comment = null,
    Object? type = null,
    Object? cryptoAmount = null,
    Object? cryptoCurrency = null,
    Object? fiatAmount = null,
    Object? fiatCurrency = null,
    Object? bankName = null,
    Object? bankAccount = null,
    Object? cryptoWalletAddress = null,
    Object? transaction = null,
    Object? transactionId = null,
  }) {
    return _then(_$V1GetOrderResponseImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      partnerPublicKey: null == partnerPublicKey
          ? _value.partnerPublicKey
          : partnerPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      userPublicKey: null == userPublicKey
          ? _value.userPublicKey
          : userPublicKey // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
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
      cryptoWalletAddress: null == cryptoWalletAddress
          ? _value.cryptoWalletAddress
          : cryptoWalletAddress // ignore: cast_nullable_to_non_nullable
              as String,
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as String,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$V1GetOrderResponseImpl implements _V1GetOrderResponse {
  const _$V1GetOrderResponseImpl(
      {required this.orderId,
      required this.created,
      required this.status,
      required this.partnerPublicKey,
      required this.userPublicKey,
      required this.comment,
      required this.type,
      required this.cryptoAmount,
      required this.cryptoCurrency,
      required this.fiatAmount,
      required this.fiatCurrency,
      required this.bankName,
      required this.bankAccount,
      required this.cryptoWalletAddress,
      required this.transaction,
      required this.transactionId});

  factory _$V1GetOrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$V1GetOrderResponseImplFromJson(json);

  @override
  final String orderId;
  @override
  final String created;
  @override
  final String status;
  @override
  final String partnerPublicKey;
  @override
  final String userPublicKey;
  @override
  final String comment;
  @override
  final String type;
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
  final String cryptoWalletAddress;
  @override
  final String transaction;
  @override
  final String transactionId;

  @override
  String toString() {
    return 'V1GetOrderResponse(orderId: $orderId, created: $created, status: $status, partnerPublicKey: $partnerPublicKey, userPublicKey: $userPublicKey, comment: $comment, type: $type, cryptoAmount: $cryptoAmount, cryptoCurrency: $cryptoCurrency, fiatAmount: $fiatAmount, fiatCurrency: $fiatCurrency, bankName: $bankName, bankAccount: $bankAccount, cryptoWalletAddress: $cryptoWalletAddress, transaction: $transaction, transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$V1GetOrderResponseImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.partnerPublicKey, partnerPublicKey) ||
                other.partnerPublicKey == partnerPublicKey) &&
            (identical(other.userPublicKey, userPublicKey) ||
                other.userPublicKey == userPublicKey) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.type, type) || other.type == type) &&
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
                other.bankAccount == bankAccount) &&
            (identical(other.cryptoWalletAddress, cryptoWalletAddress) ||
                other.cryptoWalletAddress == cryptoWalletAddress) &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      created,
      status,
      partnerPublicKey,
      userPublicKey,
      comment,
      type,
      cryptoAmount,
      cryptoCurrency,
      fiatAmount,
      fiatCurrency,
      bankName,
      bankAccount,
      cryptoWalletAddress,
      transaction,
      transactionId);

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$V1GetOrderResponseImplCopyWith<_$V1GetOrderResponseImpl> get copyWith =>
      __$$V1GetOrderResponseImplCopyWithImpl<_$V1GetOrderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$V1GetOrderResponseImplToJson(
      this,
    );
  }
}

abstract class _V1GetOrderResponse implements V1GetOrderResponse {
  const factory _V1GetOrderResponse(
      {required final String orderId,
      required final String created,
      required final String status,
      required final String partnerPublicKey,
      required final String userPublicKey,
      required final String comment,
      required final String type,
      required final String cryptoAmount,
      required final String cryptoCurrency,
      required final String fiatAmount,
      required final String fiatCurrency,
      required final String bankName,
      required final String bankAccount,
      required final String cryptoWalletAddress,
      required final String transaction,
      required final String transactionId}) = _$V1GetOrderResponseImpl;

  factory _V1GetOrderResponse.fromJson(Map<String, dynamic> json) =
      _$V1GetOrderResponseImpl.fromJson;

  @override
  String get orderId;
  @override
  String get created;
  @override
  String get status;
  @override
  String get partnerPublicKey;
  @override
  String get userPublicKey;
  @override
  String get comment;
  @override
  String get type;
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
  @override
  String get cryptoWalletAddress;
  @override
  String get transaction;
  @override
  String get transactionId;

  /// Create a copy of V1GetOrderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$V1GetOrderResponseImplCopyWith<_$V1GetOrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
