import 'package:flutter/material.dart';

class NoHaveAccountWidget extends StatelessWidget {
  final Function() onPressed;
  const NoHaveAccountWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Não tem conta?'),
        TextButton(
            onPressed: onPressed,
            child: const Text(
              'Cadastrar',
              style: TextStyle(
                  color: Color(0xFFE85D18),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ))
      ],
    );
  }
}
