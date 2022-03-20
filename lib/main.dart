import 'package:aplicativouniversitario/auth/auth.dart';
import 'package:aplicativouniversitario/screens/login.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'components/bottom_navegation_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(
    //fazer estilo
    const SystemUiOverlayStyle(
        statusBarColor: background,
        systemNavigationBarColor: orange,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthentificationService>(
          create: (_) => AuthentificationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthentificationService>().authStateChanges,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        title: 'Universitário',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Raleway',
        ),
        home: //const AuthentificationWrapper(),
            const BottomNavegation(),
        color: background,
      ),
    );
  }
}

class AuthentificationWrapper extends StatelessWidget {
  const AuthentificationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _firebaseUser = context.watch<User?>();

    if (_firebaseUser != null) {
      return const BottomNavegation();
    }
    return const Login();
  }
}
