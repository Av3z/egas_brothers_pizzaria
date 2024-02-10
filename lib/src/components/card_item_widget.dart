import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 80,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            title: const Text(
              'Pizza de Metro',
              style: TextStyle(fontSize: 15),
            ),
            subtitle: const Text('RS 145,90'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.remove_circle_outline_outlined,
                      color: Color(0xFFE85D18),
                      size: 30,
                    )),
                const Text('n'),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle,
                      color: Color(0xFFE85D18),
                      size: 30,
                    ))
              ],
            ),
            leading: Image.asset('lib/images/categories/cat_pizzas.png'),
          ),
        ),
      ),
    );
  }
}
