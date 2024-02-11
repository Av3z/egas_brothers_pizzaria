import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> loginAccount(email, password) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }
}
