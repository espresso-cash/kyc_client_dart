import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_order_response.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@Freezed()
class Order with _$Order {
  const factory Order({
    required String orderId,
    required String created,
    required String status,
    required String partnerPublicKey,
    required String userPublicKey,
    required String comment,
    required String type,
    required String cryptoAmount,
    required String cryptoCurrency,
    required String fiatAmount,
    required String fiatCurrency,
    required String bankName,
    required String bankAccount,
    required String cryptoWalletAddress,
    required String transaction,
    required String transactionId,
    required String externalId,
  }) = _Order;

  factory Order.fromJson(Map<String, Object?> json) => _$OrderFromJson(json);

  factory Order.fromV1GetOrderResponse(V1GetOrderResponse response) => Order(
        orderId: response.orderId,
        created: response.created,
        status: response.status,
        partnerPublicKey: response.partnerPublicKey,
        userPublicKey: response.userPublicKey,
        comment: response.comment,
        type: response.type,
        cryptoAmount: response.cryptoAmount,
        cryptoCurrency: response.cryptoCurrency,
        fiatAmount: response.fiatAmount,
        fiatCurrency: response.fiatCurrency,
        bankName: response.bankName,
        bankAccount: response.bankAccount,
        cryptoWalletAddress: response.cryptoWalletAddress,
        transaction: response.transaction,
        transactionId: response.transactionId,
        externalId: response.externalId,
      );
}
