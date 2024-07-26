import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/icons.dart';

class IconBikerView extends StatelessWidget {
  const IconBikerView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Image(
        image: CustomIcons.biker,
        width: 24,
      ),
    );
  }
}
