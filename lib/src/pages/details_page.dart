import 'package:egas_brothers_pizzaria/src/components/details_components/item_details.dart';
import 'package:egas_brothers_pizzaria/src/components/primary_button_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF2ED),
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color(0xFFE85D18),
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
                        child: Image.asset(
                          'lib/images/Logo.png',
                          width: 320, // Ajuste a largura conforme necessário
                          height: 220, // Ajuste a altura conforme necessário
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
                            height: 100,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(
                                      color: Colors.white, width: 2)),
                              color: Colors.white,
                              child: const ListTile(
                                title: Text(
                                  'Pizza de Metro',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Column(
                                  textDirection: TextDirection.ltr,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Até 4 sabores - 50 cm',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      children: [
                                        Text('5-6',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500)),
                                        SizedBox(width: 8),
                                        Icon(Icons.people_alt_rounded)
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
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Escolha até 4 sabores:',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ItemDetails(title: 'Sem borda'),
                  const ItemDetails(title: 'Cheddar'),
                  const ItemDetails(title: 'Mussarela'),
                  const ItemDetails(title: 'Catupiry'),
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
                          text: 'CONCLUIR', onPressed: () {})),
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
