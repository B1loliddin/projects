import 'package:flutter/material.dart';
import 'package:task3/services/constants/fonts.dart';

class PrimaryButtonView extends StatelessWidget {
  final Color backgroundButtonColor;
  final void Function() onPressed;
  final String text;
  final FontWeight fontWeight;

  const PrimaryButtonView({
    super.key,
    required this.backgroundButtonColor,
    required this.onPressed,
    required this.text,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: CustomFonts.primaryButtonStyle(
        MediaQuery.of(context).size.width,
        backgroundButtonColor,
      ),
      child: Text(
        text,
        style: CustomFonts.primaryButtonTextStyle(fontWeight),
      ),
    );
  }
}
