import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:egas_brothers_pizzaria/src/components/home_components/card_item_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/home_components/header_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String client = "Willyan";
  const HomePage({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          buttonBackgroundColor: const Color(0xFFE85D18),
          height: 55,
          color: const Color(0xFFD77E19),
          backgroundColor: const Color(0xFFFAF2ED),
          index: 2,
          items: const [
            Icon(
              Icons.receipt_long,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.discount_rounded,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.home_filled,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart_rounded,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
          ]),
      backgroundColor: const Color(0xFFFAF2ED),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
                  children: [
                    // ALL
                    Column(
                      children: [
                        Image.asset(
                          'lib/images/categories/cat_all.png',
                          height: 100,
                        ),
                        const Text('Tudo')
                      ],
                    ),
                    // OFFERS
                    Column(
                      children: [
                        Image.asset(
                          'lib/images/categories/cat_sale.png',
                          height: 100,
                        ),
                        const Text('Ofertas')
                      ],
                    ),

                    // PIZZAS
                    Column(
                      children: [
                        Image.asset(
                          'lib/images/categories/cat_pizzas.png',
                          height: 100,
                        ),
                        const Text('Pizzas')
                      ],
                    ),

                    // Bebidas
                    Column(
                      children: [
                        Image.asset(
                          'lib/images/categories/cat_drinks.png',
                          height: 100,
                        ),
                        const Text('Bebidas')
                      ],
                    ),

                    // Porções
                    Column(
                      children: [
                        Image.asset(
                          'lib/images/categories/cat_portions.png',
                          height: 100,
                        ),
                        const Text('Porções')
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(
                  height:
                      20), // Adicione um espaço entre os menus e o conteúdo abaixo

              // Ofertas
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ofertas',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              ),

              const SizedBox(height: 20), // Adicione um espaço entre os menus

              // Pizzas
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pizzas',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              ),
              const SizedBox(
                height: 15,
              ),

              // BEBIDAS
              Flexible(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bebidas',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
