import 'package:pinenacl/tweetnacl.dart';
import 'package:pinenacl/x25519.dart';

class CryptoMessage {
  CryptoMessage(this.data, this.key, this.isEncrypt);

  final Uint8List data;
  final Uint8List key;
  final bool isEncrypt;
}

Future<Uint8List> cryptoWorker(CryptoMessage message) async {
  if (message.isEncrypt) {
    final box = SecretBox(message.key);
    return Uint8List.fromList(box.encrypt(message.data));
  } else {
    final box = SecretBox(message.key);
    return box.decrypt(
      EncryptedMessage(
        nonce: message.data.sublist(0, TweetNaCl.nonceLength),
        cipherText: message.data.sublist(TweetNaCl.nonceLength),
      ),
    );
  }
}
