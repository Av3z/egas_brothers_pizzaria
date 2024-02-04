import 'package:flutter/material.dart';

class ForgotUPasswordWidget extends StatelessWidget {
  const ForgotUPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
          onPressed: () {},
          child: const Text(
            'Esqueceu a senha?',
            style: TextStyle(
                color: Color(0xFFE85D18),
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )),
    );
  }
}
