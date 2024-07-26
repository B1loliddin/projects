import 'package:flutter/material.dart';
import 'package:task13/services/constants/fonts.dart';

class PrimaryButtonView extends StatelessWidget {
  final void Function() onPressed;
  final double width;
  final String buttonText;
  final Color textColor;

  const PrimaryButtonView({
    super.key,
    required this.onPressed,
    required this.width,
    required this.buttonText,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: CustomFonts.primaryButtonStyle(
        width,
        MediaQuery.of(context).size.height * 0.065,
      ),
      child: Text(
        buttonText,
        style: CustomFonts.primaryButtonTextStyle(textColor),
      ),
    );
  }
}
