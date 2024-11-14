import 'dart:convert';

import 'package:bs58/bs58.dart';
import 'package:cryptography/cryptography.dart' hide Hash, PublicKey, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:kyc_client_dart/src/api/clients/kyc_service_client.dart';
import 'package:kyc_client_dart/src/api/clients/order_service_client.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:kyc_client_dart/src/api/models/v1_accept_order_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_complete_order_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_fail_order_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_info_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_order_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_get_user_data_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_reject_order_request.dart';
import 'package:kyc_client_dart/src/api/models/v1_set_validation_data_request.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart';
import 'package:kyc_client_dart/src/common.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';
import 'package:uuid/uuid.dart';

class KycPartnerClient {
  KycPartnerClient({
    required this.authKeyPair,
    this.kycBaseUrl = defaultKycBaseUrl,
    this.orderBaseUrl = defaultOrderBaseUrl,
  });

  final SimpleKeyPair authKeyPair;
  final String? kycBaseUrl;
  final String? orderBaseUrl;

  late String _authPublicKey;

  late KycServiceClient _kycClient;
  late OrderServiceClient _orderClient;

  late SigningKey _signingKey;

  Future<void> init() async {
    await _generateAuthToken();
    await _initializeEncryption();
  }

  Future<void> _initializeEncryption() async {
    _signingKey = SigningKey.fromValidBytes(
      Uint8List.fromList(
        await authKeyPair.extractPrivateKeyBytes() +
            base58.decode(_authPublicKey),
      ),
    );
  }

  Future<void> _generateAuthToken() async {
    _authPublicKey = await authKeyPair
        .extractPublicKey()
        .then((value) => Uint8List.fromList(value.bytes))
        .then(base58.encode);

    await _initializeKycClient();
    await _initializeOrderClient();
  }

  Future<void> _initializeKycClient() async {
    final dio = await _createAuthenticatedClient('kyc.espressocash.com');
    _kycClient = KycServiceClient(dio, baseUrl: kycBaseUrl);
  }

  Future<void> _initializeOrderClient() async {
    final dio = await _createAuthenticatedClient('orders.espressocash.com');
    _orderClient = OrderServiceClient(dio, baseUrl: orderBaseUrl);
  }

  Future<Dio> _createAuthenticatedClient(String audience) async {
    final payload = jwt.JWT(
      <String, dynamic>{
        'iss': _authPublicKey,
        'aud': audience,
      },
    );

    final token = payload.sign(
      jwt.EdDSAPrivateKey(
        await authKeyPair.extractPrivateKeyBytes() +
            base58.decode(_authPublicKey),
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
    );

    return Dio()..interceptors.add(AuthInterceptor(token));
  }

  Future<String> getUserSecretKey(String userPK) async {
    final info = await _kycClient.kycServiceGetInfo(
      body: V1GetInfoRequest(publicKey: userPK),
    );

    final edSK = await authKeyPair.extractPrivateKeyBytes();
    final xSK = Uint8List(32);

    TweetNaClExt.crypto_sign_ed25519_sk_to_x25519_sk(
      xSK,
      Uint8List.fromList(edSK),
    );

    final userEdPK = Uint8List.fromList(base58.decode(userPK));
    final userXPK = Uint8List(32);

    TweetNaClExt.crypto_sign_ed25519_pk_to_x25519_pk(
      userXPK,
      userEdPK,
    );

    final userPublicKey = PublicKey(userXPK);
    final privateKey = PrivateKey(xSK);

    final sealedBox = Box(
      theirPublicKey: userPublicKey,
      myPrivateKey: privateKey,
    );

    final encodedSecretKey = base64Decode(info.encryptedSecretKey);
    final encryptedMessage = EncryptedMessage.fromList(encodedSecretKey);
    final decryptedSecretKey = sealedBox.decrypt(encryptedMessage);

    return base58.encode(decryptedSecretKey);
  }

  Future<UserData> getUserData({
    required String userPK,
    required String secretKey,
  }) async {
    final response = await _kycClient.kycServiceGetUserData(
      body: V1GetUserDataRequest(userPublicKey: userPK),
    );

    return processUserData(
      response: response,
      userPK: userPK,
      secretKey: secretKey,
    );
  }

  Future<void> setValidationResult({
    required ValidationResult value,
    required String userPK,
    required String secretKey,
  }) async {
    final wrappedData = switch (value) {
      HashValidationResult() => WrappedValidation(
          hash: HashValidation(
            status: value.status,
            // TODO
            hash: '',
            // hash: generateHash(value.value),
          ),
        ),
      CustomValidationResult() => WrappedValidation(
          custom: CustomValidation(
            type: value.type,
            data: Uint8List.fromList(utf8.encode(value.value)),
          ),
        ),
    }
        .writeToBuffer();

    final encryptedData = await encryptAndSign(
      data: wrappedData,
      secretBox: SecretBox(Uint8List.fromList(base58.decode(secretKey))),
      signingKey: _signingKey,
    );
    await _kycClient.kycServiceSetValidationData(
      body: V1SetValidationDataRequest(
        encryptedData: base64Encode(encryptedData),
        userPublicKey: userPK,
        dataId: value.dataId,
        id: const Uuid().v4(),
      ),
    );
  }

  Future<Order> getOrder({required OrderId orderId}) async {
    final response = await _orderClient.orderServiceGetOrder(
      body: V1GetOrderRequest(
        orderId: orderId.orderId,
        externalId: orderId.externalId,
      ),
    );

    final secretKey = await getUserSecretKey(response.userPublicKey);

    return processOrderData(
      order: response,
      secretKey: secretKey,
    );
  }

  Future<List<Order>> getPartnerOrders() async {
    final response = await _orderClient.orderServiceGetPartnerOrders();

    return Future.wait(
      response.orders.map(
        (order) async {
          final secretKey = await getUserSecretKey(order.userPublicKey);

          return processOrderData(
            order: order,
            secretKey: secretKey,
          );
        },
      ),
    );
  }

  Future<void> acceptOnRampOrder({
    required OrderId orderId,
    required String bankName,
    required String bankAccount,
    required String userSecretKey,
  }) async {
    final secretBox =
        SecretBox(Uint8List.fromList(base58.decode(userSecretKey)));

    final encryptedBankName = base64Encode(
      encryptOnly(
        data: utf8.encode(bankName),
        secretBox: secretBox,
      ),
    );

    final encryptedBankAccount = base64Encode(
      encryptOnly(
        data: utf8.encode(bankAccount),
        secretBox: secretBox,
      ),
    );

    final order = await getOrder(orderId: orderId);

    final signatureMessage = createPartnerOnRampMessage(
      cryptoAmount: order.cryptoAmount,
      cryptoCurrency: order.cryptoCurrency,
      fiatAmount: order.fiatAmount,
      fiatCurrency: order.fiatCurrency,
      bankName: bankName,
      bankAccount: bankAccount,
    );
    final signature = _signingKey.sign(utf8.encode(signatureMessage));

    await _orderClient.orderServiceAcceptOrder(
      body: V1AcceptOrderRequest(
        orderId: orderId.orderId,
        externalId: orderId.externalId,
        bankName: encryptedBankName,
        bankAccount: encryptedBankAccount,
        cryptoWalletAddress: '',
        partnerSignature: base58.encode(signature.signature.asTypedList),
      ),
    );
  }

  Future<void> acceptOffRampOrder({
    required OrderId orderId,
    required String cryptoWalletAddress,
  }) async {
    final order = await getOrder(orderId: orderId);
    final signatureMessage = createPartnerOffRampMessage(
      cryptoAmount: order.cryptoAmount,
      cryptoCurrency: order.cryptoCurrency,
      fiatAmount: order.fiatAmount,
      fiatCurrency: order.fiatCurrency,
      cryptoWalletAddress: cryptoWalletAddress,
    );
    final signature = _signingKey.sign(utf8.encode(signatureMessage));

    await _orderClient.orderServiceAcceptOrder(
      body: V1AcceptOrderRequest(
        orderId: orderId.orderId,
        externalId: orderId.externalId,
        cryptoWalletAddress: cryptoWalletAddress,
        bankName: '',
        bankAccount: '',
        partnerSignature: base58.encode(signature.signature.asTypedList),
      ),
    );
  }

  Future<void> completeOnRampOrder({
    required OrderId orderId,
    required String transactionId,
  }) async =>
      _orderClient.orderServiceCompleteOrder(
        body: V1CompleteOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          transactionId: transactionId,
        ),
      );

  Future<void> completeOffRampOrder({
    required OrderId orderId,
  }) async =>
      _orderClient.orderServiceCompleteOrder(
        body: V1CompleteOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          transactionId: '',
        ),
      );

  Future<void> failOrder({
    required OrderId orderId,
    required String reason,
  }) async =>
      _orderClient.orderServiceFailOrder(
        body: V1FailOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          reason: reason,
        ),
      );

  Future<void> rejectOrder({
    required String orderId,
    required String reason,
  }) async =>
      _orderClient.orderServiceRejectOrder(
        body: V1RejectOrderRequest(orderId: orderId, reason: reason),
      );
}
