import 'package:aplicativouniversitario/auth/auth.dart';
import 'package:aplicativouniversitario/components/text_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextForm(
                controller: _emailController,
                icon: const Icon(Icons.email_outlined),
                keyboard: TextInputType.emailAddress,
                txt: 'Email',
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
              TextButton(
                  onPressed: () {
                    context.read<AuthentificationService>().signIn(
                        email: _emailController.text.trim(),
                        password: _passwordController.text.trim());
                  },
                  child: const Text("entrar"))
            ],
          ),
        ),
      ),
    );
  }
}
