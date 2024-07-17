import 'package:flutter/foundation.dart';

import 'package:kyc_client_dart/kyc_client_dart.dart';

import 'package:solana/solana.dart';

class WalletAppState extends ChangeNotifier {
  Ed25519HDKeyPair? get wallet => _wallet;
  String get authPublicKey => _authPublicKey;
  String get rawSecretKey => _rawSecretKey;
  String get partnerToken => _partnerToken;
  PartnerModel? get partnerInfo => _partnerInfo;
  String? get uploadUrl => _uploadUrl;

  Ed25519HDKeyPair? _wallet;

  late String _authPublicKey = '';
  String _partnerToken = '';
  late String _rawSecretKey = '';

  PartnerModel? _partnerInfo;
  String? _uploadUrl;

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

  Future<void> fetchUploadUrl() async {
    _uploadUrl = await _client.createUploadUrl('passport');

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
  String get url => _url;

  late String _authPublicKey = '';
  late String _email = '';
  late String _name = '';
  late String _url = '';

  late KycPartnerClient _client;

  Future<void> createPartner() async {
    _client = KycPartnerClient();

    await _client.init();
    _authPublicKey = _client.authPublicKey;

    notifyListeners();
  }

  Future<void> generateAuthToken(String partnerToken) async {
    await _client.generateAuthToken(partnerToken);

    notifyListeners();
  }

  Future<void> fetchData(String secretKey, String userPK) async {
    final keys = ['email', 'name'];

    final data = await _client.getData(
      keys: keys,
      userPK: userPK,
      secretKey: secretKey,
    );

    _email = data['email'] ?? '-';
    _name = data['name'] ?? '-';

    _url = await _client.createDownloadUrl('passport');

    notifyListeners();
  }
}
