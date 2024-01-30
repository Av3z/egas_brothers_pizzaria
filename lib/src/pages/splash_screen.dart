import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(context) {
    return Container(
        color: const Color(0xFFD77E19),
        child: Center(
          child: Image.asset('lib/images/splashscreen.png'),
        ));
  }
}
