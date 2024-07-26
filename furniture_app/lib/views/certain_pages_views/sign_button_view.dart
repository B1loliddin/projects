import 'package:flutter/material.dart';

class SignButtonView extends StatelessWidget {
  final ButtonStyle buttonStyle;
  final String text;
  final TextStyle textStyle;

  const SignButtonView({
    Key? key,
    required this.buttonStyle,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(
          onPressed: () {},
          style: buttonStyle,
          child: Text(
            text,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
