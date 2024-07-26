import 'package:flutter/material.dart';

class DescriptionTextView extends StatelessWidget {
  final String text;
  final TextStyle style;

  const DescriptionTextView({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style: style,
        ),
      ],
    );
  }
}
