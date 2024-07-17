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

  Future<void> updateData({required String email, required String name}) async {
    await _client.setData(
      data: {
        'email': email,
        'name': name,
      },
    );
  }
}

class PartnerAppState extends ChangeNotifier {
  String get authPublicKey => _authPublicKey;
  String get email => _email;
  String get name => _name;

  late String _authPublicKey = '';
  late String _email = '';
  late String _name = '';

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

  Future<void> generateAuthToken(String partnerToken) async {
    await _client.generateAuthToken(partnerToken);

    notifyListeners();
  }

  Future<void> fetchData(String secretKey, String userPK) async {
    final keys = ['email', 'name'];

    try {
      final data = await _client.getData(
        keys: keys,
        userPK: userPK,
        secretKey: secretKey,
      );

      _email = data['email'] ?? '-';
      _name = data['name'] ?? '-';

      // _url = await _client.createDownloadUrl('passport');

      notifyListeners();
    } catch (ex) {
      print(ex);
    }
  }
}
