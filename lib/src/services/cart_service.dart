import 'package:egas_brothers_pizzaria/src/models/food_model.dart';
import 'package:hive/hive.dart';

class CartService {
  static const _foodBoxName = 'food_box';

  Future<void> saveFoodModels(FoodModel foodModel) async {
    final box = await Hive.openBox(_foodBoxName);
    await box.add(foodModel.toJson());
  }

  Future<List<FoodModel>> getFoodModels() async {
    final box = await Hive.openBox(_foodBoxName);
    List<FoodModel> foodModels = [];

    for (var json in box.values) {
      if (json is Map<String, dynamic>) {
        foodModels.add(FoodModel.fromJson(json));
      }
    }

    return foodModels;
  }

  Future<void> removeFoodModel(FoodModel foodModel) async {
    final box = await Hive.openBox(_foodBoxName);
    final foodModelsJson = box.values.toList();

    for (var json in foodModelsJson) {
      if (json['title'] == foodModel.title) {
        await box.delete(json['key']);
        break;
      }
    }

    await box.close();
  }
}
