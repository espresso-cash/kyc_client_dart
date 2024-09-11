import 'package:cross_file/cross_file.dart';
import 'package:cryptography/cryptography.dart';
import 'package:flutter/foundation.dart';

import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:solana/base58.dart';

import 'package:solana/solana.dart';

class WalletAppState extends ChangeNotifier {
  Ed25519HDKeyPair? get wallet => _wallet;
  String get authPublicKey => _authPublicKey;
  String get rawSecretKey => _rawSecretKey;
  PartnerModel? get partnerInfo => _partnerInfo;

  Ed25519HDKeyPair? _wallet;

  late String _authPublicKey = '';
  late String _rawSecretKey = '';

  PartnerModel? _partnerInfo;

  late KycUserClient _client;

  String? _email;
  String? _phone;

  String? get email => _email;
  String? get phone => _phone;

  Future<void> createWallet() async {
    _wallet = await Ed25519HDKeyPair.random();

    // _wallet = await Ed25519HDKeyPair.fromMnemonic(
    //   'insert mnemonic here',
    // );

    _client = KycUserClient(
      sign: (data) async {
        final signature = await _wallet!.sign(data);
        return signature;
      },
      baseUrl: 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app/',
    );

    await _client.init(walletAddress: _wallet!.publicKey.toString());

    _rawSecretKey = _client.rawSecretKey;
    _authPublicKey = _client.authPublicKey;

    notifyListeners();

    await fetchData();
  }

  Future<void> grantPartnerAccess(String partnerPK) async {
    await _client.grantPartnerAccess(partnerPK);
    notifyListeners();
  }

  Future<void> fetchPartnerInfo(String partnerPK) async {
    _partnerInfo = await _client.getPartnerInfo(partnerPK: partnerPK);

    notifyListeners();
  }

  Future<void> updateData({
    required String email,
    required String phone,
    XFile? file,
  }) async {
    await _client.setData(
      data: V1UserData(
        email: email,
        phone: phone,
      ),
      selfie: await file?.readAsBytes(),
      idCard: null,
    );

    _email = email;
    _phone = phone;

    notifyListeners();
  }

  Future<void> fetchData() async {
    try {
      final data = await _client.getData(
        userPK: _authPublicKey,
        secretKey: _rawSecretKey,
      );

      _email = data['email'] as String? ?? '-';
      _phone = data['phone'] as String? ?? '-';

      notifyListeners();
    } on Exception {
      //ignore, new wallet/nodata
    }
  }
}

class PartnerAppState extends ChangeNotifier {
  String get authPublicKey => _authPublicKey;
  String get email => _email;
  String get phone => _phone;
  XFile? get file => _file;
  String? get validationResult => _result;

  late String _authPublicKey = '';
  late String _email = '';
  late String _phone = '';
  XFile? _file;
  String? _result;

  late KycPartnerClient _client;

  Future<void> createPartner() async {
    final keyPair = await Ed25519().newKeyPairFromSeed(
      base58decode('8ui6TQMfAudigNuKycopDyZ6irMeS7DTSe73d2gzv1Hz'),
    );
    _client = KycPartnerClient(
      authKeyPair: keyPair,
      baseUrl: 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app/',
    );

    await _client.init();

    _authPublicKey = await keyPair
        .extractPublicKey()
        .then((value) => value.bytes)
        .then(base58encode);

    notifyListeners();
  }

  Future<void> setValidationResult({
    required String message,
    required String userPK,
    required String secretKey,
  }) async {
    await _client.setValidationResult(
      value: V1ValidationData(kycSmileId: message),
      userPK: userPK,
      secretKey: secretKey,
    );
  }

  Future<void> getValidationResult({
    required String secretKey,
    required String userPK,
  }) async {
    final response = await _client.getValidationResult(
      key: 'kycSmileId',
      validatorPK: _authPublicKey,
      userPK: userPK,
      secretKey: secretKey,
    );

    _result = response;
    notifyListeners();
  }

  Future<void> fetchData(String secretKey, String userPK) async {
    final data = await _client.getData(
      userPK: userPK,
      secretKey: secretKey,
    );

    _email = data['email'] as String? ?? '-';
    _phone = data['phone'] as String? ?? '-';

    final selfie = data['photoSelfie'];

    if (selfie != null && selfie is Uint8List) {
      _file = XFile.fromData(selfie);
    }

    notifyListeners();
  }
}
