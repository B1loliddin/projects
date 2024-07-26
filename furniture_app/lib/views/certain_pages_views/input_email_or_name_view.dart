import 'package:flutter/material.dart';

class InputEmailOrNameView extends StatelessWidget {
  final UnderlineInputBorder borderStyle;

  const InputEmailOrNameView({
    Key? key,
    required this.borderStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: borderStyle,
      ),
    );
  }
}
