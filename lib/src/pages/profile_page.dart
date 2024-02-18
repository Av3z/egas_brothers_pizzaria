import 'package:egas_brothers_pizzaria/src/services/auth_service.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final AuthService _authService = AuthService();

  onPress() async {
    await _authService.loggoutUser();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xFFFAF2ED),
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
        child: Column(
          children: [
            const Row(
              children: [
                CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: Colors.pinkAccent,
                  child: Icon(
                    Icons.image,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Client',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const ListTile(
                leading: Icon(
                  Icons.person,
                  size: 35,
                  color: Colors.orange,
                ),
                title: Text('Informações Pessoais'),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.orange,
                )),
            const Divider(
              thickness: 0.3,
            ),
            const ListTile(
                leading: Icon(
                  Icons.location_on,
                  size: 35,
                  color: Colors.orange,
                ),
                title: Text('Meus Endereços'),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.orange,
                )),
            const Divider(
              thickness: 0.3,
            ),
            const ListTile(
                leading: Icon(
                  Icons.notifications,
                  size: 35,
                  color: Colors.orange,
                ),
                title: Text('Notificações'),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.orange,
                )),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.insert_drive_file_rounded,
                        color: Colors.grey[800],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Termos de uso',
                        style: TextStyle(
                            color: Color(0xFF696969),
                            decoration: TextDecoration.underline,
                            fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.info_rounded,
                        color: Colors.grey[800],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Política de privacidade',
                        style: TextStyle(
                            color: Color(0xFF696969),
                            decoration: TextDecoration.underline,
                            fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 280,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6))),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.redAccent)),
                onPressed: onPress,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SAIR',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
