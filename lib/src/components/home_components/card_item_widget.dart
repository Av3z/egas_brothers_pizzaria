import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final String peoples;
  final double price;
  final Color priceColor;

  const CardItemWidget(
      {super.key,
      required this.title,
      required this.price,
      required this.description,
      required this.peoples,
      this.priceColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
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
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: 155,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('lib/images/Logo.png'),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(description,
              maxLines:
                  2, // Defina o número máximo de linhas que o texto pode ocupar
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 12,
                  color: Color(
                    0xFF696969,
                  ),
                  fontWeight: FontWeight.w600)),
          Row(
            children: [
              Text(
                peoples,
                style: const TextStyle(
                    color: Color(0xFF696969), fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.people_rounded,
                color: Color(0xFF696969),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'R\$ $price',
                style:
                    TextStyle(color: priceColor, fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.add_shopping_cart),
            ],
          ),
        ],
      ),
    );
  }
}
