import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/fonts.dart';

class PrimaryButtonView extends StatelessWidget {
  final double width;
  final double height;
  final void Function() onPressed;
  final ButtonTextView buttonText;

  const PrimaryButtonView({
    super.key,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: PrimaryButtonFrameView(
        onPressed: onPressed,
        buttonText: buttonText,
      ),
    );
  }
}

class PrimaryButtonFrameView extends StatelessWidget {
  final void Function()? onPressed;
  final ButtonTextView buttonText;

  const PrimaryButtonFrameView({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: CustomFonts.primaryButtonStyle(),
      child: buttonText,
    );
  }
}

class ButtonTextView extends StatelessWidget {
  final String text;

  const ButtonTextView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomFonts.primaryButtonTextStyle(),
    );
  }
}
