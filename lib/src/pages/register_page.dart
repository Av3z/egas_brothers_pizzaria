import 'package:egas_brothers_pizzaria/src/components/input_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/register_widgets/have_account_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/register_widgets/or_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/register_widgets/social_buttons_login_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/logo_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/primary_button_widget.dart';
import 'package:egas_brothers_pizzaria/src/models/user_model.dart';
import 'package:egas_brothers_pizzaria/src/pages/login_page.dart';
import 'package:egas_brothers_pizzaria/src/services/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  final AuthService _authService = AuthService();

  void onPressed() async {
    var userModel = UserModel(
        userId: "",
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        phone: "");
    await _authService.registerAccount(userModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF2ED),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo widget
              const LogoWidget(
                height: 180,
              ),

              const SizedBox(height: 30),

              // Input Nome
              InputWidget(
                text: 'Nome',
                controller: nameController,
                onChanged: (value) {},
              ),

              const SizedBox(height: 15),

              // input email
              InputWidget(
                text: 'E-mail',
                controller: emailController,
                onChanged: (value) {},
              ),

              const SizedBox(height: 15),

              // INPUT PASSWORD
              InputWidget(
                text: 'Senha',
                controller: passwordController,
                obscureText: true,
                onChanged: (value) {},
              ),

              const SizedBox(height: 15),

              // Input Confirm Password
              InputWidget(
                text: 'Confirme a Senha',
                controller: confirmPasswordController,
                obscureText: true,
                onChanged: (value) {},
              ),

              const SizedBox(height: 24),

              // Register button
              PrimaryButtonWidget(text: 'CADASTRAR', onPressed: onPressed),

              // Have account ?
              HaveAccountWidget(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 20),

              // Widget OR and Divider
              const OrWidget(),

              const SizedBox(height: 30),

              // Social Buttons Register
              const SocialButtonsLoginWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
