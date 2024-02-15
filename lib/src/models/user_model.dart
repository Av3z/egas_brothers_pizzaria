import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String userId = "";
  String name = "";
  String email = "";
  String password = "";
  String role = "member";
  String phone = "";
  String adress = "";
  String adressNumber = "";
  String adressDistrict = "";

  bool firstPurchase = true;

  DateTime createdAt = DateTime.now();
  DateTime updatedAt = DateTime.now();

  UserModel({
    required this.userId,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  UserModel.fromJson(json) {
    userId = json['userId'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    role = json['role'];
    phone = json['phone'];
    adress = json['adress'];
    adressNumber = json['adressNumber'];
    adressDistrict = json['adressDistrict'];
    firstPurchase = json['firstPurchase'];
    createdAt = (json['createdAt'] as Timestamp).toDate();
    updatedAt = (json['updatedAt'] as Timestamp).toDate();
  }

  toJson() {
    return {
      'userId': userId,
      'name': name,
      'email': email,
      'password': password,
      'role': role,
      'phone': phone,
      'adress': adress,
      'adressNumber': adressNumber,
      'adressDistrict': adressDistrict,
      'firstPurchase': firstPurchase,
      'createdAt': Timestamp.fromDate(createdAt),
      'updatedAt': Timestamp.fromDate(updatedAt)
    };
  }
}
