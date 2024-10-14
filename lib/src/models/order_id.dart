class OrderId {
  OrderId._({required this.orderId, required this.externalId});

  factory OrderId.fromOrderId(String orderId) =>
      OrderId._(orderId: orderId, externalId: '');

  factory OrderId.fromExternalId(String externalId) =>
      OrderId._(orderId: '', externalId: externalId);

  factory OrderId.from({String? orderId, String? externalId}) {
    assert(
      orderId != null || externalId != null,
      'Either orderId or externalId must be provided',
    );
    return OrderId._(
      orderId: orderId ?? '',
      externalId: externalId ?? '',
    );
  }
  final String orderId;
  final String externalId;

  bool get hasOrderId => orderId.isNotEmpty;
  bool get hasExternalId => externalId.isNotEmpty;
}
