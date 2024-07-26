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
import '../views/sign_up_page_views/agreement_check_box_view.dart';
import '../views/sign_up_page_views/agreement_text_view.dart';
import '../views/sign_up_page_views/sign_up_button_view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
          // #inputs
          Expanded(
            flex: 8,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),

                  // #getting started text
                  HeaderTextView(data: StringConstants.gettingStartedText),

                  SizedBox(height: 8),

                  // #create a new account text
                  HeaderLowerView(data: StringConstants.createAnAccount),

                  Spacer(),

                  // #label email text
                  LabelTextView(data: StringConstants.emailText),

                  // #input email
                  UsernameOrEmailInputView(
                    icon: Icons.email_outlined,
                    errorText: StringConstants.emailErrorText,
                  ),

                  SizedBox(height: 40),

                  // #label username text
                  LabelTextView(data: StringConstants.usernameText),

                  // #input username
                  UsernameOrEmailInputView(
                    icon: Icons.person_outline,
                    errorText: StringConstants.usernameErrorText,
                  ),

                  SizedBox(height: 24),

                  // #label password text
                  LabelTextView(data: StringConstants.passwordText),

                  // #input password
                  PasswordInputView(
                    errorText: StringConstants.passwordErrorText,
                  ),

                  SizedBox(height: 16),

                  // #
                  Row(
                    children: [
                      // #agreement check box
                      AgreementCheckBox(),

                      // #agreement text
                      AgreementTextView(),
                    ],
                  ),

                  Spacer(flex: 2),
                ],
              ),
            ),
          ),

          // #buttons
          Expanded(
            flex: 3,
            child: Column(
              children: [
                // #sign up button
                SignUpButtonView(),

                SizedBox(height: 16),

                // #footer text
                FooterTextView(
                  firstText: StringConstants.alreadyHaveAnAccountText,
                  secondText: StringConstants.signInFooterText,
                  routeName: '/sign_in_page',
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
