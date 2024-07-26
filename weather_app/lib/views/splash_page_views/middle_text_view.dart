import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/fonts.dart';
import 'package:weather_app/services/constants/strings.dart';

class MiddleTextView extends StatelessWidget {
  const MiddleTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      CustomStrings.weatherX,
      style: CustomFonts.weatherXTextStyle(),
    );
  }
}
