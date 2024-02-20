import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egas_brothers_pizzaria/src/models/food_model.dart';
import 'package:uuid/uuid.dart';

class FoodService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  var uid = const Uuid();

  setFood(FoodModel foodModel) async {
    await _firebaseFirestore
        .collection('food')
        .doc(foodModel.imageId)
        .set(foodModel.toJson());
  }

  Stream<QuerySnapshot> getAllFoods(category) {
    return _firebaseFirestore
        .collection('food')
        .where('category', isEqualTo: category)
        .snapshots();
  }
}
