import 'package:flutter/material.dart';
import 'package:furniture_app/pages/boarding_page.dart';
import 'package:furniture_app/pages/sign_in_page.dart';
import 'package:furniture_app/pages/sign_up_page.dart';

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/boarding_page',
      routes: {
        '/boarding_page': (context) => const BoardingPage(),
        '/sign_in_page': (context) => const SignInPage(),
        '/sign_up_page': (context) => const SignUpPage(),
      },
    );
  }
}
