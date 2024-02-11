import 'package:egas_brothers_pizzaria/src/components/input_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/login_widgets/forgot_u_password_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/login_widgets/no_have_account_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/login_widgets/or_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/login_widgets/social_buttons_login_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/logo_widget.dart';
import 'package:egas_brothers_pizzaria/src/components/primary_button_widget.dart';
import 'package:egas_brothers_pizzaria/src/pages/register_page.dart';
import 'package:egas_brothers_pizzaria/src/services/auth_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();
  final AuthService _authService = AuthService();
  String email = '';
  String password = '';

  void onPressed() async {
    await _authService.loginAccount(emailController.text, senhaController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF2ED),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              // Logo widget
              const LogoWidget(
                height: 180,
              ),

              const SizedBox(
                height: 30,
              ),

              // input email
              InputWidget(
                  text: 'E-mail',
                  controller: emailController,
                  onChanged: (value) {}),

              const SizedBox(
                height: 15,
              ),

              // INPUT PASSWORD
              InputWidget(
                  text: 'Senha',
                  controller: senhaController,
                  obscureText: true,
                  onChanged: (value) {}),

              // Forgot u password ?
              const ForgotUPasswordWidget(),

              const SizedBox(
                height: 30,
              ),

              // Login button
              PrimaryButtonWidget(text: 'ENTRAR', onPressed: onPressed),

              // No have account ?
              NoHaveAccountWidget(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ));
                },
              ),

              const SizedBox(
                height: 20,
              ),

              // Widget OR and Divider
              const OrWidget(),

              const SizedBox(height: 30),

              // Social Buttons login
              const SocialButtonsLoginWidget(),
            ]),
          ),
        ),
      ),
    );
  }
}
