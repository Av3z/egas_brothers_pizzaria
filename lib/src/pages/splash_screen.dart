import 'package:egas_brothers_pizzaria/src/pages/auth_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const AuthPage(),
      ));
    });
  }

  @override
  Widget build(context) {
    return Container(
        color: const Color(0xFFD77E19),
        child: Center(
          child: Image.asset('lib/images/splashscreen.png'),
        ));
  }
}
