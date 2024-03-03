import 'package:egas_brothers_pizzaria/src/components/details_components/item_details.dart';
import 'package:flutter/widgets.dart';

class PizzaSection extends StatelessWidget {
  const PizzaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: const Text(
            'Escolha até 4 sabores:',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const ItemDetails(title: 'Sem borda'),
        const ItemDetails(title: 'Cheddar'),
        const ItemDetails(title: 'Mussarela'),
        const ItemDetails(title: 'Catupiry'),
      ],
    );
  }
}
