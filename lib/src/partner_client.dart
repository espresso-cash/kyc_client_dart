import 'dart:convert';

import 'package:bs58/bs58.dart';
import 'package:cryptography/cryptography.dart' hide Hash, PublicKey, SecretBox;
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart' as jwt;
import 'package:dio/dio.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:kyc_client_dart/src/api/intercetor.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart';
import 'package:kyc_client_dart/src/common.dart';
import 'package:kyc_client_dart/src/models/order.dart';
import 'package:pinenacl/ed25519.dart';
import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

export 'models/order_id.dart';
export 'models/validation_result.dart';

class KycPartnerClient {
  KycPartnerClient({
    required this.authKeyPair,
    this.baseUrl = defaultKycBaseUrl,
  });

  final SimpleKeyPair authKeyPair;
  final String? baseUrl;

  late String _authPublicKey;

  late String _token;
  late KycServiceClient _kycClient;

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

    final partnerTokenData = jwt.JWT(
      <String, dynamic>{'iss': _authPublicKey, 'aud': 'kyc.espressocash.com'},
    );

    _token = partnerTokenData.sign(
      jwt.EdDSAPrivateKey(
        await authKeyPair.extractPrivateKeyBytes() +
            base58.decode(_authPublicKey),
      ),
      algorithm: jwt.JWTAlgorithm.EdDSA,
    );

    final dio = Dio()..interceptors.add(AuthInterceptor(_token));
    _kycClient = KycServiceClient(dio, baseUrl: baseUrl);
  }

  Future<V1GetInfoResponse> getUserInfo(String userPK) async =>
      _kycClient.kycServiceGetInfo(
        body: V1GetInfoRequest(publicKey: userPK),
      );

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
  }) async =>
      processUserData(
        kycClient: _kycClient,
        userPK: userPK,
        secretKey: secretKey,
      );

  Future<void> setValidationResult({
    required ValidationResult value,
    required String userPK,
    required String secretKey,
  }) async {
    final wrappedData = switch (value) {
      HashValidationResult() =>
        WrappedValidation(hash: generateHash(value.value)),
      CustomValidationResult() => WrappedValidation(
          custom: CustomValidation(
            type: value.type,
            data: Uint8List.fromList(utf8.encode(value.value)),
          ),
        ),
    }
        .writeToBuffer();

    final encryptedData = encryptAndSign(
      data: wrappedData,
      secretBox: SecretBox(Uint8List.fromList(base58.decode(secretKey))),
      signingKey: _signingKey,
    );

    await _kycClient.kycServiceSetValidationData(
      body: V1SetValidationDataRequest(
        encryptedData: base64Encode(encryptedData),
        userPublicKey: userPK,
        dataId: value.dataId,
        id: '',
      ),
    );
  }

  Future<Order> getOrder({
    required OrderId orderId,
  }) async {
    final response = await _kycClient.kycServiceGetOrder(
      body: V1GetOrderRequest(
        orderId: orderId.orderId,
        externalId: orderId.externalId,
      ),
    );

    return Order.fromV1GetOrderResponse(response);
  }

  Future<List<Order>> getPartnerOrders() async {
    final response = await _kycClient.kycServiceGetPartnerOrders();

    return response.orders.map(Order.fromV1GetOrderResponse).toList();
  }

  Future<void> acceptOnRampOrder({
    required OrderId orderId,
    required String bankName,
    required String bankAccount,
  }) async =>
      _kycClient.kycServiceAcceptOrder(
        body: V1AcceptOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          bankName: bankName,
          bankAccount: bankAccount,
          cryptoWalletAddress: '',
        ),
      );

  Future<void> acceptOffRampOrder({
    required OrderId orderId,
    required String cryptoWalletAddress,
  }) async =>
      _kycClient.kycServiceAcceptOrder(
        body: V1AcceptOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          cryptoWalletAddress: cryptoWalletAddress,
          bankName: '',
          bankAccount: '',
        ),
      );

  Future<void> completeOnRampOrder({
    required OrderId orderId,
    required String transactionId,
  }) async =>
      _kycClient.kycServiceCompleteOrder(
        body: V1CompleteOrderRequest(
          orderId: orderId.orderId,
          externalId: orderId.externalId,
          transactionId: transactionId,
        ),
      );

  Future<void> completeOffRampOrder({
    required OrderId orderId,
  }) async =>
      _kycClient.kycServiceCompleteOrder(
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
      _kycClient.kycServiceFailOrder(
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
      _kycClient.kycServiceRejectOrder(
        body: V1RejectOrderRequest(orderId: orderId, reason: reason),
      );
}
