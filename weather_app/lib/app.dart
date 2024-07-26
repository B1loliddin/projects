import 'package:flutter/material.dart';
import 'package:weather_app/pages/error_page.dart';
import 'package:weather_app/pages/introduction_page.dart';
import 'package:weather_app/pages/main_page.dart';
import 'package:weather_app/pages/splash_page.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_page',
      routes: {
        '/splash_page': (context) => const SplashPage(),
        '/introduction_page': (context) => const IntroductionPage(),
        '/main_page': (context) => const MainPage(),
        '/error_page': (context) => const ErrorPage(),
      },
    );
  }
}
