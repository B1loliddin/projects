import 'package:flutter/material.dart';

import '../services/constants.dart';

class SignInButtonView extends StatelessWidget {
  const SignInButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 53,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: ColorConstants.purple,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        child: const Text(
          StringConstants.signInText,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: ColorConstants.white,
          ),
        ),
      ),
    );
  }
}
