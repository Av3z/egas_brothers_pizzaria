import 'package:egas_brothers_pizzaria/src/components/details_components/item_details.dart';
import 'package:egas_brothers_pizzaria/src/components/primary_button_widget.dart';
import 'package:egas_brothers_pizzaria/src/models/food_model.dart';
import 'package:egas_brothers_pizzaria/src/services/cart_service.dart';
import 'package:egas_brothers_pizzaria/src/services/storage_service.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final FoodModel foodModel;
  const DetailsPage({super.key, required this.foodModel});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String _imagePath = '';
  final StorageService _storageService = StorageService();
  final CartService _cartService = CartService();

  @override
  void initState() {
    super.initState();
    _getImagePath();
  }

  Future<void> _getImagePath() async {
    try {
      String imagePath =
          await _storageService.getPath(widget.foodModel.imageId);
      setState(() {
        _imagePath = imagePath;
      });
    } catch (e) {
      print('Erro ao obter o caminho da imagem: $e');
    }
  }

  saveCart() async {
    try {
      await _cartService.saveFoodModels(widget.foodModel);
      print('Produto adicionado ao carrinho');
    } catch (e) {
      print('Erro ao salvar o FoodModel no Hive: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF2ED),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF2ED),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFFE85D18),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              color: const Color(0xFFFAF2ED),
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // Primeira imagem
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: _imagePath.isNotEmpty
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: Image.network(
                                  _imagePath,
                                  width:
                                      320, // Ajuste a largura conforme necessário
                                  height: 220,
                                  fit: BoxFit.fill,
                                ),
                              )
                            : Image.asset(
                                'lib/images/Logo.png',
                                width:
                                    320, // Ajuste a largura conforme necessário
                                height:
                                    220, // Ajuste a altura conforme necessário
                              ),
                      ),
                      // Segunda imagem posicionada sobre a primeira
                      Positioned(
                          top:
                              180, // Ajuste a posição vertical conforme necessário
                          left:
                              19, // Ajuste a posição horizontal conforme necessário
                          child: SizedBox(
                            width: 290,
                            height: 120,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              color: Colors.white,
                              child: ListTile(
                                title: Text(
                                  widget.foodModel.title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  textDirection: TextDirection.ltr,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.foodModel.description,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        Text(widget.foodModel.peoples,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        const SizedBox(width: 8),
                                        const Icon(Icons.people_alt_rounded)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  !(widget.foodModel.category == "Pizzas")
                      ? Container()
                      : Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Escolha até 4 sabores:',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const ItemDetails(title: 'Calabresa'),
                            const ItemDetails(title: 'Bacon'),
                            const ItemDetails(title: 'Coração'),
                            const ItemDetails(title: 'Frango com Catupiry'),
                            const ItemDetails(title: '4 Queijos'),
                            const ItemDetails(title: 'Portuguesa'),
                            const ItemDetails(title: 'Strogonoff'),
                            const ItemDetails(title: 'Fricassê'),
                            const ItemDetails(title: 'Camarão'),
                            const ItemDetails(title: 'Picanha'),
                            const ItemDetails(title: 'Chocolate Preto'),
                            const ItemDetails(title: 'Chocolate Branco'),
                            const ItemDetails(title: 'Nutella com M&M'),
                            const ItemDetails(title: 'Nutella com Morango'),
                            const ItemDetails(title: 'Negresco'),
                            const ItemDetails(title: 'Prestígio'),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Text(
                                'Sabor da borda:',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const ItemDetails(title: 'Sem borda'),
                            const ItemDetails(title: 'Cheddar'),
                            const ItemDetails(title: 'Mussarela'),
                            const ItemDetails(title: 'Catupiry'),
                          ],
                        ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 380,
                    height: 90,
                    child: Card(
                      child: TextField(
                        onChanged: (text) {},
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            hintText: 'Adicione uma observação..',
                            hintStyle: TextStyle(
                                color: Color(0xFFA4A4A4), fontSize: 14),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      width: 300,
                      child: PrimaryButtonWidget(
                          text: 'CONCLUIR', onPressed: saveCart)),
                  const SizedBox(
                    height: 30,
                  )
                ],
              )),
        ),
      ),
    );
  }
}
