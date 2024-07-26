import 'package:flutter/material.dart';

import '../services/constants.dart';
import '../views/check_box_and_text_view.dart';
import '../views/divider_view.dart';
import '../views/forgot_the_password_view.dart';
import '../views/header_text_view.dart';
import '../views/input_email_view.dart';
import '../views/input_password_view.dart';
import '../views/logos_view.dart';
import '../views/sign_in_button_view.dart';
import '../views/sign_up_text_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
          color: ColorConstants.darkBlack,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            // #header text
            HeaderTextView(),

            Spacer(flex: 3),

            // #email TextField
            InputEmailView(),

            SizedBox(height: 28),

            // #password TextField
            InputPasswordView(),

            Spacer(flex: 2),

            // #checkbox and text
            CheckBoxAndTextView(),

            Spacer(),

            // #sign in button
            SignInButtonView(),

            SizedBox(height: 21),

            // #forgot the password text
            ForgotThePasswordTextView(),

            Spacer(flex: 3),

            // #divider
            DividerView(),

            Spacer(),

            // #company logos
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // #facebook logo
                FacebookLogoView(),

                SizedBox(width: 18),

                // #google logo
                GoogleLogoView(),

                SizedBox(width: 18),

                // #apple logo
                AppleLogoView(),
              ],
            ),

            Spacer(flex: 3),

            // #sign up text
            SignUpTextView(),

            Spacer(),
          ],
        ),
      ),
    );
  }
}












