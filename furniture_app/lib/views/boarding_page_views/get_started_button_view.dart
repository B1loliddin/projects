import 'package:flutter/material.dart';

class GetStartedButtonView extends StatelessWidget {
  final String text;
  final ButtonStyle buttonStyle;
  final TextStyle textStyle;

  const GetStartedButtonView({
    Key? key,
    required this.text,
    required this.buttonStyle,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void goToSignInPage() {
      Navigator.pushReplacementNamed(context, '/sign_in_page');
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // #get started button
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.38,
          height: 54,
          child: ElevatedButton(
            onPressed: goToSignInPage,
            style: buttonStyle,
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ],
    );
  }
}
