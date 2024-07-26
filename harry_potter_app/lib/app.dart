import 'package:flutter/material.dart';
import 'package:harry_potter_app/pages/main_page.dart';

class HarryPotterApp extends StatelessWidget {
  const HarryPotterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const MainPage(),
    );
  }
}
