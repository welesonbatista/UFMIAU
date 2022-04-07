import 'package:aplicativouniversitario/auth/auth.dart';
import 'package:aplicativouniversitario/auth/google_sign_in.dart';
import 'package:aplicativouniversitario/screens/login.dart';
import 'package:aplicativouniversitario/utilities/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'components/bottom_navegation_bar.dart';

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel',
  'High Importance Notifications',
  description: 'This channel is used for important notifications.',
  importance: Importance.high,
  playSound: true,
);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessaginBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  // ignore: avoid_print
  print('A message just showed up! ${message.messageId}');
}

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

  FirebaseMessaging.onBackgroundMessage(_firebaseMessaginBackgroundHandler);

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true, badge: true, sound: true);

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
        ChangeNotifierProvider(
          create: (ctx) => GoogleSignInProvider(),
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
          scaffoldBackgroundColor: background,
          fontFamily: 'Raleway',
        ),
        darkTheme: ThemeData(),
        home: const AuthentificationWrapper(),
        color: background,
      ),
    );
  }
}

class AuthentificationWrapper extends StatefulWidget {
  const AuthentificationWrapper({Key? key}) : super(key: key);

  @override
  State<AuthentificationWrapper> createState() =>
      _AuthentificationWrapperState();
}

class _AuthentificationWrapperState extends State<AuthentificationWrapper> {
  @override
  void initState() {
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      // ignore: unused_local_variable
      AndroidNotification? android = message.notification?.android;

      if (notification != null) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              color: Colors.blue,
              playSound: true,
              icon: '@mipmap/ic_launcher',
            ),
          ),
        );
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // ignore: avoid_print
      print('New was published, bitch');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null) {
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text(notification.title.toString()),
                content: SingleChildScrollView(
                  child: Column(children: [Text(notification.body.toString())]),
                ),
              );
            });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _firebaseUser = context.watch<User?>();

    if (_firebaseUser != null) {
      return const BottomNavegation();
    }
    return const Login();
  }
}
