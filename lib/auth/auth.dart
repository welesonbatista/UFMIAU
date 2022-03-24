import 'package:firebase_auth/firebase_auth.dart';

class AuthentificationService {
  final FirebaseAuth _firebaseAuth;

  AuthentificationService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed In";
    } on FirebaseAuthException catch (e) {
      return "${e.message}";
    }
  }

  Future<String> logOut() async {
    try {
      await _firebaseAuth.signOut();
      return "cu";
    } on FirebaseAuthException catch (e) {
      return "kkkk $e";
    }
  }
}
