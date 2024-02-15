import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final Function(int) onTap;
  const BottomNav({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        buttonBackgroundColor: const Color(0xFFE85D18),
        height: 55,
        color: const Color(0xFFD77E19),
        backgroundColor: const Color(0xFFFAF2ED),
        index: 2,
        onTap: onTap,
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
        ]);
  }
}
