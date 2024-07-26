import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/fonts.dart';

class SecondaryTextView extends StatelessWidget {
  final String text;

  const SecondaryTextView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomFonts.settingsPageSecondaryTextStyle(),
    );
  }
}
