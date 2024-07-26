import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/constants/color_constants.dart';
import '../services/constants/string_constants.dart';
import '../views/certain_pages_views/footer_button_view.dart';
import '../views/certain_pages_views/footer_text_view.dart';
import '../views/certain_pages_views/header_lower_view.dart';
import '../views/certain_pages_views/header_text_view.dart';
import '../views/certain_pages_views/label_text_view.dart';
import '../views/certain_pages_views/password_input_view.dart';
import '../views/certain_pages_views/username_or_email_input_view.dart';
import '../views/sign_in_page_views/sign_in_button_view.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        forceMaterialTransparency: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.only(left: 38),
          child: Icon(
            Icons.location_on_outlined,
            color: ColorConstants.darkBlack,
          ),
        ),
        title: const Text(
          'Ahmedabad, Gujarat',
          style: TextStyle(
            fontFamily: 'DMSans',
            fontWeight: FontWeight.w700,
            fontSize: 14,
            letterSpacing: -0.2,
            color: ColorConstants.lightBlack,
          ),
        ),
      ),
      body: const Column(
        children: [
          // #
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(
                    flex: 1,
                  ),

                  // #header text
                  HeaderTextView(data: StringConstants.letUsSignInText),

                  SizedBox(height: 8),

                  // #header lower text
                  HeaderLowerView(data: StringConstants.welcomeBackText),

                  Spacer(flex: 1),

                  // #label username or email text
                  LabelTextView(data: StringConstants.usernameOrEmailText),

                  // #input username or email
                  UsernameOrEmailInputView(
                    icon: Icons.person_outline,
                    errorText: StringConstants.usernameOrEmailErrorText,
                  ),

                  SizedBox(height: 40),

                  // #label password text
                  LabelTextView(data: StringConstants.passwordText),

                  // #input password
                  PasswordInputView(
                    errorText: StringConstants.passwordErrorText,
                  ),

                  Spacer(flex: 4),
                ],
              ),
            ),
          ),

          // #
          Expanded(
            flex: 3,
            child: Column(
              children: [
                // #sign in button
                SignInButtonView(),

                SizedBox(height: 16),

                // #footer text
                FooterTextView(
                  firstText: StringConstants.doNotHaveAnAccountText,
                  secondText: StringConstants.signUpFooterText,
                  routeName: '/sign_up_page',
                ),

                SizedBox(height: 23),

                // #grey footer divider
                Divider(),

                SizedBox(height: 23),

                // #connect with facebook button
                FooterButtonView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
