import 'package:flutter/material.dart';

class HaveAccountWidget extends StatelessWidget {
  final Function() onPressed;
  const HaveAccountWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Já tem uma conta?'),
        TextButton(
            onPressed: onPressed,
            child: const Text(
              'Entrar',
              style: TextStyle(
                  color: Color(0xFFE85D18),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ))
      ],
    );
  }
}