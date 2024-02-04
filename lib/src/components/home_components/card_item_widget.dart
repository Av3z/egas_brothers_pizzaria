import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                spreadRadius: 1,
                color: Colors.grey.shade300,
                offset: const Offset(0, 3)),
          ]),
      padding: const EdgeInsets.all(10),
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('lib/images/Logo.png'),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Titulo',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Descrição do produto', style: TextStyle(fontSize: 12)),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Text('2-3'),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.people_rounded)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'R\$ 59,90',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.add_shopping_cart),
            ],
          ),
        ],
      ),
    );
  }
}
