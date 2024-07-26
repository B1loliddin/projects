import 'package:flutter/material.dart';

class LabelTextView extends StatelessWidget {
  final String text;
  final TextStyle style;

  const LabelTextView({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: style,
        ),
      ],
    );
  }
}
