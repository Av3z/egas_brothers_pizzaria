import 'dart:convert'; // Para converter a senha em bytes
import 'package:crypto/crypto.dart';

class EncryptPasswordService {
  String hashPassword(String password) {
    var bytes = utf8.encode(password);
    return sha256.convert(bytes).toString();
  }
}
