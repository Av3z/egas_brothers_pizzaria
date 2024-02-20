import 'package:egas_brothers_pizzaria/src/services/storage_service.dart';
import 'package:flutter/material.dart';

class CardItemWidget extends StatefulWidget {
  final String title;
  final String imageId;
  final String description;
  final String peoples;
  final double price;
  final Color priceColor;

  const CardItemWidget(
      {super.key,
      required this.title,
      required this.imageId,
      required this.price,
      required this.description,
      required this.peoples,
      this.priceColor = Colors.black});

  @override
  State<CardItemWidget> createState() => _CardItemWidgetState();
}

class _CardItemWidgetState extends State<CardItemWidget> {
  String _imagePath = '';
  final StorageService _storageService = StorageService();

  @override
  void initState() {
    super.initState();
    _getImagePath();
  }

  Future<void> _getImagePath() async {
    try {
      String imagePath = await _storageService.getPath(widget.imageId);
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
      margin: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                blurRadius: 1,
                spreadRadius: 1,
                color: Colors.grey.shade300,
                offset: const Offset(0, 3)),
          ]),
      width: 155,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 130,
            width: 155,
            child: _imagePath.isNotEmpty
                ? ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(6)),
                    child: Image.network(
                      _imagePath,
                      fit: BoxFit.cover,
                    ),
                  )
                : Image.asset('lib/images/Logo.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(widget.description,
                    maxLines:
                        2, // Defina o número máximo de linhas que o texto pode ocupar
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color(
                          0xFF696969,
                        ),
                        fontWeight: FontWeight.w600)),
                Row(
                  children: [
                    Text(
                      widget.peoples,
                      style: const TextStyle(
                          color: Color(0xFF696969),
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.people_rounded,
                      color: Color(0xFF696969),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'R\$ ${widget.price}',
                      style: TextStyle(
                          color: widget.priceColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.add_shopping_cart),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
