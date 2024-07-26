import 'package:flutter/material.dart';

class ForgotPasswordTextView extends StatelessWidget {
  final String text;
  final TextStyle style;

  const ForgotPasswordTextView({
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
