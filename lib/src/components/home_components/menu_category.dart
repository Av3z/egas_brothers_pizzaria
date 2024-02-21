import 'package:flutter/material.dart';

class MenuCategory extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool activated;

  const MenuCategory(
      {super.key,
      required this.text,
      required this.imagePath,
      this.activated = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 100,
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        activated
            ? Container(
                width: 10,
                height: 2,
                color: const Color(0xFFD77E19),
              )
            : Container()
      ],
    );
  }
}
