import 'package:egas_brothers_pizzaria/src/models/food_model.dart';
import 'package:egas_brothers_pizzaria/src/services/storage_service.dart';
import 'package:flutter/material.dart';

class CartItemWidget extends StatefulWidget {
  final FoodModel foodModel;
  final Function() removeButton;
  const CartItemWidget(
      {super.key, required this.foodModel, required this.removeButton});

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  String _imagePath = '';
  final StorageService _storageService = StorageService();

  @override
  void initState() {
    super.initState();
    _getImagePath();
  }

  Future<void> _getImagePath() async {
    try {
      String imagePath =
          await _storageService.getPath(widget.foodModel.imageId);
      setState(() {
        _imagePath = imagePath;
      });
    } catch (e) {
      print('Erro ao obter o caminho da imagem: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: 200,
      height: 100,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                  width: 90,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                    child: _imagePath.isNotEmpty
                        ? Image.network(
                            _imagePath,
                            fit: BoxFit.cover,
                            width: 100,
                          )
                        : Image.asset('lib/images/categories/cat_pizzas.png'),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        overflow: TextOverflow.clip,
                        widget.foodModel.title,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Text(
                      'R\$ ${widget.foodModel.price}',
                      style: const TextStyle(
                          color: Color(0xFFa4a4a4),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: widget.removeButton,
                        icon: const Icon(
                          Icons.remove_circle_outline_outlined,
                          color: Color(0xFFE85D18),
                          size: 20,
                        )),
                    const Text('1'),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          color: Color(0xFFE85D18),
                          size: 20,
                        ))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
