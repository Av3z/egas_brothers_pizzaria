import 'package:egas_brothers_pizzaria/src/components/card_item_widget.dart';

import 'package:egas_brothers_pizzaria/src/components/primary_button_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xFFFAF2ED),
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Resumo do pedido',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: const [
                  CardItemWidget(),
                  SizedBox(height: 2),
                  CardItemWidget(),
                  SizedBox(height: 2),
                  CardItemWidget(),
                  SizedBox(height: 2),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'Tipo de entrega',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 400,
                  height: 136, // altura 2
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text(
                            'Endereço',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: const Icon(Icons.add_location_sharp),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('Preço'),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.check_circle,
                                    color: Color(0xFFE85D18),
                                  ))
                            ],
                          ),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        ListTile(
                          title: const Text(
                            'Retirar na loja',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          leading: const Icon(Icons.add_location_sharp),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'GRÁTIS',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.check_circle,
                                    color: Color(0xFFE85D18),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3, //altura 3
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Cupom',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      child: Card(
                        child: ListTile(
                          leading: const Icon(Icons.discount),
                          title: const Text(
                            '10% na Primeira Compra',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.check_circle,
                                color: Color(0xFFE85D18),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                PrimaryButtonWidget(
                  text: 'FINALIZAR COMPRA',
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: false,
                        builder: (context) => Center(
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 45),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        height: 4,
                                        width: 40,
                                        alignment: Alignment.topCenter,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.grey,
                                        )),
                                    Container(
                                      height: 30,
                                      margin:
                                          EdgeInsets.only(top: 60, bottom: 0),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: const Text(
                                            'Resumo de valores',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        const Row(
                                          children: [
                                            Text('Pedido:'),
                                            SizedBox(
                                              width: 200,
                                            ),
                                            Text('valor')
                                          ],
                                        ),
                                        const Divider(
                                          thickness: 1,
                                        ),
                                        const Row(
                                          children: [
                                            Text('Entrega:'),
                                            SizedBox(
                                              width: 195,
                                            ),
                                            Text('valor')
                                          ],
                                        ),
                                        const Divider(
                                          thickness: 1,
                                        ),
                                        const Row(
                                          children: [
                                            Text('Desconto:'),
                                            SizedBox(
                                              width: 185,
                                            ),
                                            Text(
                                              'valor',
                                              style: TextStyle(
                                                  color: Colors.green),
                                            )
                                          ],
                                        ),
                                        const Divider(
                                          thickness: 1,
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'Total:',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 210,
                                            ),
                                            Text('valor',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        PrimaryButtonWidget(
                                          text: 'IR PARA O PAGAMENTO',
                                          onPressed: () {},
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ));
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
