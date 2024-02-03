// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF2ED),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/images/Logo.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      shadowColor: Colors.white70,
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: TextFormField(
                          onChanged: (text) {
                            email = text;
                          },
                          decoration: InputDecoration(
                              hintText: 'E-mail',
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: TextStyle(
                                color: Color(0xFFA4A4A4),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Material(
                      shadowColor: Colors.white70,
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: TextField(
                          onChanged: (text) {
                            password = text;
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                              hintText: 'Senha',
                              filled: true,
                              fillColor: Colors.white,
                              hintStyle: TextStyle(
                                color: Color(0xFFA4A4A4),
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                                color: Color(0xFFE85D18),
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: ElevatedButton(
                          onPressed: () {},
                          // ignore: sort_child_properties_last
                          child: const Text(
                            'ENTRAR',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE85D18),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6))),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Não tem conta?'),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Cadastrar',
                              style: TextStyle(
                                  color: Color(0xFFE85D18),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 0.6,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          'OU',
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            thickness: 0.6,
                            height: 10,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('lib/images/google.png'),
                        Image.asset('lib/images/facebook.png'),
                        Image.asset('lib/images/apple.png')
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
