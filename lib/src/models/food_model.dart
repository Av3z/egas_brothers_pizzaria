class FoodModel {
  String category = "";
  String imageId = "";
  String title = "";
  String description = "";
  String peoples = "";
  double price = 0.0;

  FoodModel(
      {required this.category,
      required this.imageId,
      required this.title,
      required this.description,
      required this.peoples,
      required this.price});

  FoodModel.fromJson(json) {
    category = json['category'];
    imageId = json['imageId'];
    title = json['title'];
    description = json['description'];
    peoples = json['peoples'];
    price = json['price'];
  }

  toJson() {
    return {
      'category': category,
      'imageId': imageId,
      'title': title,
      'description': description,
      'peoples': peoples,
      'price': price
    };
  }
}
