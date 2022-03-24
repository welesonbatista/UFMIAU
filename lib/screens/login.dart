import 'package:aplicativouniversitario/auth/auth.dart';
import 'package:aplicativouniversitario/components/google_button.dart';
import 'package:aplicativouniversitario/components/text_form.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    Size size = MediaQuery.of(context).size;
    _url() async {
      const url =
          'https://sso.ufg.br/cas/login?service=https://services.apps.ufg.br/cas/login';
      if (await canLaunch(url)) {
        await launch(url, forceSafariVC: true, forceWebView: true);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'lib/assets/image/logo.png',
                scale: 1.8,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Entrar",
                      style: subAppBar,
                    ),
                  ),
                  TextForm(
                    controller: _emailController,
                    icon: const Icon(Icons.person_outline),
                    keyboard: TextInputType.text,
                    txt: 'Usuário',
                    obscure: false,
                    validator: () {},
                  ),
                  TextForm(
                    controller: _passwordController,
                    icon: const Icon(Icons.lock_outlined),
                    keyboard: TextInputType.text,
                    txt: 'Senha',
                    obscure: true,
                    validator: () {},
                  ),
                  Container(
                    width: size.width * 0.4,
                    height: size.height / 14,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: orange,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          )
                        ]),
                    child: TextButton(
                      onPressed: () {
                        context.read<AuthentificationService>().signIn(
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim());
                      },
                      child: const Text(
                        "entrar",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('ou'),
                  ),
                  const GoogleSignUpButton(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: TextButton(
                      onPressed: _url,
                      child: const Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(
                          color: black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
