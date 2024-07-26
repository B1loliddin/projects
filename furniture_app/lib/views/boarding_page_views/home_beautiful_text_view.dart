import 'package:flutter/material.dart';

class HomeBeautifulTextView extends StatelessWidget {
  final String text;
  final TextStyle style;

  const HomeBeautifulTextView({
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
