import 'package:egas_brothers_pizzaria/src/models/food_model.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  final FoodModel foodModel;
  final Function() removeButton;
  const CartItemWidget(
      {super.key, required this.foodModel, required this.removeButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 200,
      height: 80,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            title: Text(
              foodModel.title,
              style: const TextStyle(fontSize: 15),
            ),
            subtitle: Text('RS ${foodModel.price}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: removeButton,
                    icon: const Icon(
                      Icons.remove_circle_outline_outlined,
                      color: Color(0xFFE85D18),
                      size: 30,
                    )),
                const Text('0'),
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
