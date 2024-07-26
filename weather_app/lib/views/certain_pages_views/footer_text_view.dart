import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/fonts.dart';

class FooterTextView extends StatelessWidget {
  final FirstFooterTextView firstFooterText;
  final SecondFooterTextView secondFooterText;

  const FooterTextView({
    super.key,
    required this.firstFooterText,
    required this.secondFooterText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // #
        firstFooterText,

        // #
        secondFooterText,
      ],
    );
  }
}

class SecondFooterTextView extends StatelessWidget {
  final String text;

  const SecondFooterTextView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomFonts.secondFooterTextStyle(),
    );
  }
}

class FirstFooterTextView extends StatelessWidget {
  final String text;

  const FirstFooterTextView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomFonts.firstFooterTextStyle(),
    );
  }
}
