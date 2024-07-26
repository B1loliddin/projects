import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';
import 'package:furniture_app/services/constants/fonts.dart';
import 'package:furniture_app/services/constants/icons.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/views/certain_pages_views/grey_divider_and_logo_view.dart';
import 'package:furniture_app/views/certain_pages_views/input_email_or_name_view.dart';
import 'package:furniture_app/views/certain_pages_views/input_password_view.dart';
import 'package:furniture_app/views/certain_pages_views/label_text_view.dart';
import 'package:furniture_app/views/certain_pages_views/logo_image_view.dart';
import 'package:furniture_app/views/certain_pages_views/sign_button_view.dart';
import 'package:furniture_app/views/sign_in_page_views/forgot_password_text_view.dart';
import 'package:furniture_app/views/sign_in_page_views/hello_text_view.dart';
import 'package:furniture_app/views/sign_in_page_views/sign_up_text_view.dart';
import 'package:furniture_app/views/sign_in_page_views/welcome_back_text_view.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            // #
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // #grey divider and logo
                    const GreyDividerAndLogoView(
                      greyDivider: GreyDividerView(
                        dividerColor: CustomColors.secondLightGrey,
                      ),
                      logo: LogoImageView(image: CustomImages.logo),
                    ),

                    // #hello text
                    HelloTextView(
                      text: CustomStrings.helloText,
                      style: CustomFonts.helloTextTextStyle(),
                    ),

                    const SizedBox(height: 15),

                    // #welcome back text
                    WelcomeBackTextView(
                      text: CustomStrings.welcomeBackText,
                      style: CustomFonts.welcomeBackTextTextStyle(),
                    ),

                    const Spacer(),
                  ],
                ),
              ),
            ),

            // #
            Expanded(
              flex: 5,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // #
                    DecoratedBox(
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                            color: CustomColors.blueGrey.withOpacity(0.2),
                          ),
                        ],
                        color: CustomColors.white,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.93,
                        height: MediaQuery.of(context).size.height * 0.55,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(flex: 2),

                              Column(
                                children: [
                                  // #
                                  LabelTextView(
                                    text: CustomStrings.emailLabelText,
                                    style: CustomFonts.labelTextTextStyle(),
                                  ),

                                  // #
                                  InputEmailOrNameView(
                                    borderStyle: CustomFonts.textFieldStyle(),
                                  ),
                                ],
                              ),

                              const Spacer(flex: 2),

                              // #
                              Column(
                                children: [
                                  // #
                                  LabelTextView(
                                    text: CustomStrings.passwordLabelText,
                                    style: CustomFonts.labelTextTextStyle(),
                                  ),

                                  // #
                                  InputPasswordView(
                                    borderStyle: CustomFonts.textFieldStyle(),
                                    suffixIcon: CustomIcons.visibilityOn,
                                    secondSuffixIcon: CustomIcons.visibilityOff,
                                  ),
                                ],
                              ),

                              const Spacer(flex: 2),

                              // #
                              ForgotPasswordTextView(
                                text: CustomStrings.forgotPasswordText,
                                style:
                                    CustomFonts.forgotPasswordTextTextStyle(),
                              ),

                              const Spacer(flex: 2),

                              // #
                              SignButtonView(
                                buttonStyle: CustomFonts.signButtonStyle(),
                                text: CustomStrings.signInText,
                                textStyle:
                                    CustomFonts.signButtonTextTextStyle(),
                              ),

                              const Spacer(flex: 2),

                              // #
                              SignUpTextView(
                                text: CustomStrings.signUpText,
                                style: CustomFonts.signUpTextTextStyle(),
                                routeName: '/sign_up_page',
                              ),

                              const Spacer(flex: 3),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
