import 'package:flutter/material.dart';

import 'pages/authentication_page.dart';
import 'pages/content_page.dart';
import 'pages/home_page.dart';
import 'pages/password_recovery_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => const HomePage(),
        '/sign_in_page': (context) => const SignInPage(),
        '/sign_up_page': (context) => const SignUpPage(),
        '/password_recovery_page': (context) => const PasswordRecoveryPage(),
        '/authentication_page': (context) => const AuthenticationPage(),
        '/content_page': (context) => const ContentPage(),
      },
    );
  }
}
