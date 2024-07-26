import 'package:flutter/material.dart';

class SignUpTextView extends StatelessWidget {
  final String text;
  final TextStyle style;
  final String routeName;

  const SignUpTextView({
    Key? key,
    required this.text,
    required this.style,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void goToSignUpPage() {
      Navigator.pushReplacementNamed(context, routeName);
    }

    return GestureDetector(
      onTap: goToSignUpPage,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
