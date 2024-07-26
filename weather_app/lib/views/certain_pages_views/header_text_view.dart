import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/fonts.dart';

class HeaderTextView extends StatelessWidget {
  final String text;

  const HeaderTextView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomFonts.headerTextStyle(),
    );
  }
}
