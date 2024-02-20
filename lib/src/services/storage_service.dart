import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  Future<String> getPath(path) async {
    return await _firebaseStorage.ref().child("$path.jpg").getDownloadURL();
  }
}
