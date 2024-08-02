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
  String get partnerToken => _partnerToken;
  PartnerModel? get partnerInfo => _partnerInfo;

  Ed25519HDKeyPair? _wallet;

  late String _authPublicKey = '';
  String _partnerToken = '';
  late String _rawSecretKey = '';

  PartnerModel? _partnerInfo;

  late KycUserClient _client;

  Future<void> createWallet() async {
    _partnerToken = '';
    _wallet = await Ed25519HDKeyPair.random();

    _client = KycUserClient(
      sign: (data) async {
        final signature = await _wallet!.sign(data);
        return signature;
      },
    );

    await _client.init();
    await _client.initStorage(walletAddress: _wallet!.publicKey.toString());

    _rawSecretKey = _client.rawSecretKey;
    _authPublicKey = _client.authPublicKey;

    notifyListeners();
  }

  Future<void> generatePartnerToken(String partnerPK) async {
    _partnerToken = await _client.generatePartnerToken(partnerPK);

    notifyListeners();
  }

  Future<void> fetchPartnerInfo(String partnerPK) async {
    _partnerInfo = await _client.getPartnerInfo(partnerPK: partnerPK);

    notifyListeners();
  }

  Future<void> updateData({
    required String email,
    required String name,
    XFile? file,
  }) async {
    await _client.setData(
      data: {
        DataInfoKeys.email: email,
        DataInfoKeys.phone: name,
      },
    );

    if (file != null) {
      await _client.upload(
        file: await file.readAsBytes(),
        key: DataFileKeys.photo,
      );
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
    _client = KycPartnerClient(authKeyPair: keyPair);

    _authPublicKey = await keyPair
        .extractPublicKey()
        .then((value) => value.bytes)
        .then(base58encode);

    notifyListeners();
  }

  Future<void> generateAuthToken(String partnerToken, String secretKey) async {
    await _client.init(partnerToken: partnerToken, secretKey: secretKey);

    notifyListeners();
  }

  Future<void> setValidationResult(String message) async {
    await _client.setValidationResult(
      key: ValidationResultKeys.smileId,
      value: message,
    );
  }

  Future<void> getValidationResult({
    required String secretKey,
    required String userPK,
  }) async {
    try {
      final response = await _client.getValidationResult(
        key: ValidationResultKeys.smileId,
        validatorPK: _authPublicKey,
        secretKey: secretKey,
      );

      _result = response;
      notifyListeners();
    } catch (ex) {
      print(ex);
    }
  }

  Future<void> fetchData(String secretKey, String userPK) async {
    final keys = [DataInfoKeys.email, DataInfoKeys.phone];

    final data = await _client.getData(
      keys: keys,
      userPK: userPK,
      secretKey: secretKey,
    );

    _email = data[DataInfoKeys.email.value] ?? '-';
    _phone = data[DataInfoKeys.phone.value] ?? '-';

    notifyListeners();

    final file = await _client.download(
      key: DataFileKeys.photo,
      userPK: userPK,
      secretKey: secretKey,
    );

    _file = XFile.fromData(file);

    notifyListeners();
  }
}
