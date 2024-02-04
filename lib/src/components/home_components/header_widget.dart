import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String client;
  const HeaderWidget({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Olá, $client',
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        const Icon(
          Icons.notifications_none_outlined,
          size: 35,
          color: Colors.black,
        ),
      ],
    );
  }
}
