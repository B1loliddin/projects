import 'package:flutter/material.dart';

class WelcomeBackTextView extends StatelessWidget {
  final String text;
  final TextStyle style;

  const WelcomeBackTextView({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
