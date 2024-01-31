import 'package:egas_brothers_pizzaria/src/pages/home_page.dart';
import 'package:egas_brothers_pizzaria/src/pages/login_page.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  final bool isLogged = false;

  @override
  Widget build(BuildContext context) {
    return isLogged ? const HomePage() : const LoginPage();
  }
}
