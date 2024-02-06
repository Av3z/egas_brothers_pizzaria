import 'package:flutter/material.dart';

class MenuCategory extends StatelessWidget {
  final String text;
  final String imagePath;
  const MenuCategory({super.key, required this.text, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 100,
        ),
        Text(text)
      ],
    );
  }
}
