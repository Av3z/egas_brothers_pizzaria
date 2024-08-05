import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egas_brothers_pizzaria/src/components/custom_load.dart';
import 'package:egas_brothers_pizzaria/src/components/home_components/card_item_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/home_components/header_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/home_components/menu_category.dart';
import 'package:egas_brothers_pizzaria/src/models/food_model.dart';
import 'package:egas_brothers_pizzaria/src/pages/details_page.dart';
import 'package:egas_brothers_pizzaria/src/services/food_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String client = "Willyan";
  final FoodService _foodService = FoodService();

  @override
  Widget build(context) {
    return SafeArea(
      child: Container(
        color: const Color(0xFFFAF2ED),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: ListView(
          children: [
            // Info and notify
            HeaderWidget(client: client),

            const SizedBox(
              height: 15,
            ),

            // Menu Category
            SizedBox(
              height: 135, // Defina a altura desejada do menu
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  // ALL
                  MenuCategory(
                      activated: true,
                      text: 'Tudo',
                      imagePath: 'lib/images/categories/cat_all.png'),

                  // OFFERS
                  MenuCategory(
                      text: 'Ofertas',
                      imagePath: 'lib/images/categories/cat_sale.png'),
                  // PIZZAS
                  MenuCategory(
                      text: 'Pizzas',
                      imagePath: 'lib/images/categories/cat_pizzas.png'),
                  // Bebidas
                  MenuCategory(
                      text: 'Porções',
                      imagePath: 'lib/images/categories/cat_portions.png'),
                  // Porções
                  MenuCategory(
                      text: 'Bebidas',
                      imagePath: 'lib/images/categories/cat_drinks.png'),
                ],
              ),
            ),

            const SizedBox(
                height:
                    20), // Adicione um espaço entre os menus e o conteúdo abaixo

            // Ofertas
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ofertas',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    // Content
                    SizedBox(
                        height: 270,
                        child: StreamBuilder<QuerySnapshot?>(
                          stream: _foodService.getAllFoods('Ofertas'),
                          builder: (context, snapshot) {
                            return !snapshot.hasData
                                ? customLoad()
                                : ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: snapshot.data!.docs.map((e) {
                                      var foodModel = FoodModel.fromJson(
                                          (e.data() as Map<String, dynamic>));

                                      return GestureDetector(
                                        key: Key(foodModel.imageId),
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return DetailsPage(
                                                foodModel: foodModel,
                                              );
                                            },
                                          ));
                                        },
                                        child: CardItemWidget(
                                          title: foodModel.title,
                                          imageId: foodModel.imageId,
                                          description: foodModel.description,
                                          peoples: foodModel.peoples,
                                          price: foodModel.price,
                                          priceColor: const Color(0xFF2E9048),
                                        ),
                                      );
                                    }).toList(),
                                  );
                          },
                        )),
                  ],
                ),

                const SizedBox(height: 20),

                // Pizzas
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pizzas',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    // Content
                    SizedBox(
                        height: 270,
                        child: StreamBuilder<QuerySnapshot>(
                          stream: _foodService.getAllFoods('Pizzas'),
                          builder: (context, snapshot) {
                            return !snapshot.hasData
                                ? customLoad()
                                : ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: snapshot.data!.docs.map((e) {
                                      var foodModel = FoodModel.fromJson(
                                          (e.data() as Map<String, dynamic>));

                                      return GestureDetector(
                                        key: Key(foodModel.imageId),
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return DetailsPage(
                                                foodModel: foodModel,
                                              );
                                            },
                                          ));
                                        },
                                        child: CardItemWidget(
                                          title: foodModel.title,
                                          imageId: foodModel.imageId,
                                          description: foodModel.description,
                                          peoples: foodModel.peoples,
                                          price: foodModel.price,
                                        ),
                                      );
                                    }).toList(),
                                  );
                          },
                        )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                // BEBIDAS
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Porções',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    // Content
                    SizedBox(
                        height: 270,
                        child: StreamBuilder<QuerySnapshot>(
                          stream: _foodService.getAllFoods('Porções'),
                          builder: (context, snapshot) {
                            return !snapshot.hasData
                                ? customLoad()
                                : ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: snapshot.data!.docs.map((e) {
                                      var foodModel = FoodModel.fromJson(
                                          (e.data() as Map<String, dynamic>));

                                      return GestureDetector(
                                        key: Key(foodModel.imageId),
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return DetailsPage(
                                                foodModel: foodModel,
                                              );
                                            },
                                          ));
                                        },
                                        child: CardItemWidget(
                                          title: foodModel.title,
                                          imageId: foodModel.imageId,
                                          description: foodModel.description,
                                          peoples: foodModel.peoples,
                                          price: foodModel.price,
                                        ),
                                      );
                                    }).toList(),
                                  );
                          },
                        )),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),

                // PORÇÕES
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bebidas',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    // Content
                    SizedBox(
                        height: 270,
                        child: StreamBuilder<QuerySnapshot>(
                          stream: _foodService.getAllFoods('Bebidas'),
                          builder: (context, snapshot) {
                            return !snapshot.hasData
                                ? customLoad()
                                : ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: snapshot.data!.docs.map((e) {
                                      var foodModel = FoodModel.fromJson(
                                          (e.data() as Map<String, dynamic>));

                                      return GestureDetector(
                                        key: Key(foodModel.imageId),
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                            builder: (context) {
                                              return DetailsPage(
                                                foodModel: foodModel,
                                              );
                                            },
                                          ));
                                        },
                                        child: CardItemWidget(
                                          title: foodModel.title,
                                          imageId: foodModel.imageId,
                                          description: foodModel.description,
                                          peoples: foodModel.peoples,
                                          price: foodModel.price,
                                        ),
                                      );
                                    }).toList(),
                                  );
                          },
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
