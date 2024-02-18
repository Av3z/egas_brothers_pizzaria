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
            Row(
              children: [
                const CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: Colors.pinkAccent,
                  child: Icon(
                    Icons.image,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  'Cliente',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      shadows: [
                        Shadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 3),
                            blurRadius: 3)
                      ]),
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
                  color: Color(0xFFE85D18),
                ),
                title: Text('Informações pessoais'),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFE85D18),
                )),
            const Divider(
              thickness: 0.3,
            ),
            const ListTile(
                leading: Icon(
                  Icons.location_on,
                  size: 35,
                  color: Color(0xFFE85D18),
                ),
                title: Text('Meus endereços'),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFE85D18),
                )),
            const Divider(
              thickness: 0.3,
            ),
            const ListTile(
                leading: Icon(
                  Icons.notifications,
                  size: 35,
                  color: Color(0xFFE85D18),
                ),
                title: Text('Notificações'),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xFFE85D18),
                )),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.description,
                        color: Color(0xfF696969),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Termos de uso',
                        style: TextStyle(
                            color: Color(0xFF696969),
                            decoration: TextDecoration.underline,
                            fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.privacy_tip,
                        color: Color(0xfF696969),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
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
                        const MaterialStatePropertyAll(Color(0xFFFF1200))),
                onPressed: onPress,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SAIR',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          shadows: [
                            Shadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(0, 3),
                                blurRadius: 3)
                          ]),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
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
