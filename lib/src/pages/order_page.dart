import 'package:egas_brothers_pizzaria/src/components/my_divider.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: const Color(0xFFFAF2ED),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  'Acompanhe seu pedido',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                          isThreeLine: true,
                          leading:
                              Image.asset('lib/images/img_orders/clock.png'),
                          title: const Text(
                            'Pedido em andamento',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF696969)),
                          ),
                          subtitle: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1 Pizza de Metro',
                                style: TextStyle(color: Color(0xFF696969)),
                              ),
                              Text(
                                '1 Coca-Cola 2L',
                                style: TextStyle(color: Color(0xFF696969)),
                              ),
                              Text(
                                '1 Porção de Fritas 200g',
                                style: TextStyle(color: Color(0xFF696969)),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.check_circle_rounded,
                                  color: Color(0xFFE85D18),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Pedido recebido',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF696969)),
                                ),
                              ],
                            ),
                            MyDivider(),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xFFE85D18),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Pedido aceito, está sendo preparado',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF696969)),
                                ),
                              ],
                            ),
                            MyDivider(),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xFFE85D18),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Pedido saiu para entrega',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF696969)),
                                ),
                              ],
                            ),
                            MyDivider(),
                            Row(
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  color: Color(0xFFE85D18),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Pedido entregue',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF696969)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Histórico',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Card(
                      child: Column(
                        children: [
                          ListTile(
                            isThreeLine: true,
                            leading:
                                Image.asset('lib/images/img_orders/bag.png'),
                            title: const Text(
                              'Pedido concluído',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF696969)),
                            ),
                            subtitle: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1 Pizza Grande',
                                  style: TextStyle(color: Color(0xFF696969)),
                                ),
                                Text(
                                  '1 Coca-Cola 2L',
                                  style: TextStyle(color: Color(0xFF696969)),
                                ),
                                Text(
                                  '1 Porção de Fritas 200g',
                                  style: TextStyle(color: Color(0xFF696969)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Card(
                      child: Column(
                        children: [
                          ListTile(
                            isThreeLine: true,
                            leading:
                                Image.asset('lib/images/img_orders/bag.png'),
                            title: const Text(
                              'Pedido concluído',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF696969)),
                            ),
                            subtitle: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1 Pizza Família',
                                  style: TextStyle(color: Color(0xFF696969)),
                                ),
                                Text(
                                  '1 Guaraná 2L',
                                  style: TextStyle(color: Color(0xFF696969)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Card(
                      child: Column(
                        children: [
                          ListTile(
                            isThreeLine: true,
                            leading:
                                Image.asset('lib/images/img_orders/bag.png'),
                            title: const Text(
                              'Pedido concluído',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF696969)),
                            ),
                            subtitle: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1 Pizza Média',
                                  style: TextStyle(color: Color(0xFF696969)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
