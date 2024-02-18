import 'package:egas_brothers_pizzaria/src/components/home_components/card_item_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/home_components/header_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/home_components/menu_category.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String client = "Willyan";
  const HomePage({super.key});

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
              height: 120, // Defina a altura desejada do menu
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  // ALL
                  MenuCategory(
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
                      text: 'Bebidas',
                      imagePath: 'lib/images/categories/cat_drinks.png'),
                  // Porções
                  MenuCategory(
                      text: 'Porções',
                      imagePath: 'lib/images/categories/cat_portions.png'),
                ],
              ),
            ),

            const SizedBox(
                height:
                    20), // Adicione um espaço entre os menus e o conteúdo abaixo

            // Ofertas
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ofertas',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                // Content
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CardItemWidget(),
                      CardItemWidget(),
                      CardItemWidget(),
                      CardItemWidget(),
                      CardItemWidget(),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20), // Adicione um espaço entre os menus

            // Pizzas
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pizzas',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                // Content
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CardItemWidget(),
                      CardItemWidget(),
                      CardItemWidget(),
                      CardItemWidget(),
                      CardItemWidget(),
                    ],
                  ),
                ),
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
                  'Bebidas',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                // Content
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      CardItemWidget(),
                      CardItemWidget(),
                      CardItemWidget(),
                      CardItemWidget(),
                      CardItemWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
