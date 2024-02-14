import 'package:flutter/material.dart';

class SocialButtonsLoginWidget extends StatelessWidget {
  const SocialButtonsLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset('lib/images/google.png'),
        Image.asset('lib/images/facebook.png'),
        Image.asset('lib/images/apple.png')
      ],
    );
  }
}
