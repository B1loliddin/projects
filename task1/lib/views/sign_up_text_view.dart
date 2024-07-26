import 'package:flutter/material.dart';

import '../services/constants.dart';

class SignUpTextView extends StatelessWidget {
  const SignUpTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: ColorConstants.secondDarkGrey,
        ),
        children: <TextSpan>[
          TextSpan(text: StringConstants.alreadyHaveAccountText),
          TextSpan(
            text: StringConstants.signUpText,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: ColorConstants.purple,
            ),
          ),
        ],
      ),
    );
  }
}
