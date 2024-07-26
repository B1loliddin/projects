import 'package:flutter/material.dart';
import 'package:task13/pages/home_page.dart';
import 'package:task13/pages/main_page.dart';
import 'package:task13/pages/payment_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => const HomePage(),
        '/main_page': (context) => const MainPage(),
        '/payment_page': (context) => const PaymentPage(),
      },
    );
  }
}
