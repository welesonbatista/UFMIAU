import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  bool _isSigningIn = false;

  GoogleSignInProvider() {
    _isSigningIn = false;
  }

  bool get isSigingIn => _isSigningIn;

  set isSigingIn(bool sigingIn) {
    _isSigningIn = sigingIn;
    notifyListeners();
  }

  Future googleLogin() async {
    isSigingIn = true;

    final user = await googleSignIn.signIn();
    if (user == null) {
      isSigingIn = false;
      return;
    } else {
      final googleAuth = await user.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      isSigingIn = false;
    }
  }

  void logout() async {
//teste para desconectar o google dentro do signOut
    await FirebaseAuth.instance.signOut().then((_) {
      googleSignIn.disconnect();
    });
  }
}
