import 'package:drone_app/pages/details_page.dart';
import 'package:drone_app/pages/home_page.dart';
import 'package:drone_app/services/constants/fonts.dart';
import 'package:flutter/material.dart';

class DroneApp extends StatelessWidget {
  const DroneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: CustomFonts.circularStd,
      ),
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => const HomePage(),
        '/details_page': (context) => const DetailsPage(),
      },
    );
  }
}
