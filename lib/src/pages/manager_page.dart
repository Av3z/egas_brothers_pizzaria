import 'package:egas_brothers_pizzaria/src/components/bottom_nav.dart';
import 'package:egas_brothers_pizzaria/src/pages/cart_page.dart';
import 'package:egas_brothers_pizzaria/src/pages/coupon_page.dart';
import 'package:egas_brothers_pizzaria/src/pages/home_page.dart';
import 'package:egas_brothers_pizzaria/src/pages/order_page.dart';
import 'package:egas_brothers_pizzaria/src/pages/profile_page.dart';
import 'package:flutter/material.dart';

class ManagerPage extends StatefulWidget {
  const ManagerPage({super.key});

  @override
  State<ManagerPage> createState() => _ManagerPageState();
}

class _ManagerPageState extends State<ManagerPage> {
  int pageIndex = 2;

  List<Widget> pages = [
    const OrderPage(),
    const CouponPage(),
    const HomePage(),
    const CartPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
      ),
      body: pages[pageIndex],
    );
  }
}
