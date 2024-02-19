import 'package:flutter/material.dart';

class CouponPage extends StatelessWidget {
  const CouponPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xFFFAF2ED),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Cupons',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Cupom Fidelidade',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                        'A cada 10 pedidos realizados, leve uma pizza GRÁTIS',
                        selectionColor: Color(0xFF696969)),
                    leading: Icon(
                      Icons.discount,
                      color: Color(0xFF696969),
                    ),
                    isThreeLine: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Color(0xFFE85D18),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Color(0xFFE85D18),
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Color(0xFFE85D18),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xFFE85D18),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xFFE85D18),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xFFE85D18),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xFFE85D18),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xFFE85D18),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xFFE85D18),
                      ),
                      Icon(
                        Icons.circle_outlined,
                        color: Color(0xFFE85D18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  '10% na Primeira Compra',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.discount, color: Color(0xFF696969)),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'FRETE GRÁTIS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Icon(Icons.discount, color: Color(0xFF696969)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
