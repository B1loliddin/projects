import 'package:flutter/material.dart';
import 'package:task3/pages/connect_with_social_media_page.dart';
import 'package:task3/pages/home_page.dart';
import 'package:task3/pages/sign_up_with_phone_number_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => const HomePage(),
        '/connect_with_social_media_page': (context) =>
            const ConnectWithSocialMediaPage(),
        '/sign_up_with_phone_number_page': (context) =>
            const SignUpWithPhoneNumberPage(),
      },
    );
  }
}
