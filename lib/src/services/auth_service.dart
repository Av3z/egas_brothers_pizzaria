import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egas_brothers_pizzaria/src/models/user_model.dart';
import 'package:egas_brothers_pizzaria/src/services/encrypt_password_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final EncryptPasswordService _encryptPasswordService =
      EncryptPasswordService();

  Future<void> loginAccount(email, password) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> registerAccount(UserModel userModel) async {
    userModel.password =
        _encryptPasswordService.hashPassword(userModel.password);

    await _firebaseAuth
        .createUserWithEmailAndPassword(
            email: userModel.email, password: userModel.password)
        .then((value) {
      userModel.userId = value.user!.uid;
      setUser(userModel);
    });
  }

  setUser(UserModel userModel) async {
    await _firebaseFirestore
        .collection('users')
        .doc(userModel.userId)
        .set(userModel.toJson());
  }
}
