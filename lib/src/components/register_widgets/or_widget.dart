import 'package:flutter/material.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 0.6,
          ),
        ),
        SizedBox(width: 10),
        Text(
          'OU',
        ),
        SizedBox(width: 10),
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 0.6,
            height: 10,
          ),
        )
      ],
    );
  }
}
