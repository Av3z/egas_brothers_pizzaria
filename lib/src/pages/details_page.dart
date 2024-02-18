import 'package:egas_brothers_pizzaria/src/components/primary_button_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFAF2ED),
        body: Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Card(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      // Primeira imagem
                      Card(
                        color: Colors.white,
                        child: Image.asset(
                          'lib/images/Logo.png',
                          width: 320, // Ajuste a largura conforme necessário
                          height: 220, // Ajuste a altura conforme necessário
                        ),
                      ),
                      // Segunda imagem posicionada sobre a primeira
                      const Positioned(
                          top:
                              180, // Ajuste a posição vertical conforme necessário
                          left:
                              15, // Ajuste a posição horizontal conforme necessário
                          child: SizedBox(
                            width: 300,
                            height: 100,
                            child: Card(
                              color: Colors.white,
                              child: ListTile(
                                title: Text('Pizza de metro'),
                                subtitle: Column(
                                  textDirection: TextDirection.ltr,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Até 4 sabores - 50 cm'),
                                    Row(
                                      children: [
                                        Text('5-6'),
                                        Icon(Icons.people)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Escolha até 4 sabores:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 400,
                  height: 60,
                  child: Card(
                    child: ListTile(
                      title: const Text('CALABRESA'),
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
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Sabor da borda:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 400,
                  height: 60,
                  child: Card(
                    child: ListTile(
                      title: const Text('SEM BORDA'),
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
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 380,
                  height: 90,
                  child: Card(
                    child: TextField(
                      onChanged: (text) {},
                      decoration: const InputDecoration(
                          hintText: 'Adicione uma observação',
                          hintStyle: TextStyle(
                            color: Color(0xFFA4A4A4),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: 300,
                    child:
                        PrimaryButtonWidget(text: 'CONCLUIR', onPressed: () {}))
              ],
            )));
  }
}
