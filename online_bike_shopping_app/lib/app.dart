import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/screens/discover_screen.dart';

class OnlineBikeShoppingApp extends StatelessWidget {
  const OnlineBikeShoppingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiscoverScreen(),
    );
  }
}
