import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double height;
  const LogoWidget({super.key, double? height}) : height = height ?? 150;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height, child: Image.asset('lib/images/Logo.png'));
  }
}
