import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 65,
      child: Card(
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.remove_circle_outline_outlined,
                    color: Color(0xFFD4D4D4),
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle,
                    color: Color(0xFFE85D18),
                    size: 30,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
