import 'package:flutter/material.dart';

class FooterTextView extends StatelessWidget {
  final TextStyle defaultStyle;
  final String firstText;
  final String secondText;
  final TextStyle secondStyle;
  final String routeName;

  const FooterTextView({
    Key? key,
    required this.defaultStyle,
    required this.firstText,
    required this.secondText,
    required this.secondStyle,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void goToSignInPage() {
      Navigator.pushReplacementNamed(context, routeName);
    }

    return GestureDetector(
      onTap: goToSignInPage,
      child: RichText(
        text: TextSpan(
          style: defaultStyle,
          children: <TextSpan>[
            TextSpan(
              text: firstText,
            ),
            TextSpan(
              text: secondText,
              style: secondStyle,
            ),
          ],
        ),
      ),
    );
  }
}
