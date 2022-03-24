import 'package:aplicativouniversitario/auth/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class GoogleSignUpButton extends StatelessWidget {
  const GoogleSignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final provider =
            Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.googleLogin();
      },
      child: const FaIcon(
        FontAwesomeIcons.google,
        color: Colors.red,
      ),
    );
  }
}
