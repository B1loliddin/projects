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
import 'package:furniture_app/views/sign_up_page_views/footer_text_view.dart';
import 'package:furniture_app/views/sign_up_page_views/welcome_text_view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            // #
            Expanded(
              flex: 1,
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

                    const Spacer(),

                    // #
                    WelcomeTextView(
                      text: CustomStrings.welcomeText,
                      style: CustomFonts.welcomeTextTextStyle(),
                    ),

                    const Spacer(),
                  ],
                ),
              ),
            ),

            // #
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(right: 30),
                child: DecoratedBox(
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Column(
                        children: [
                          const Spacer(),

                          // #
                          Column(
                            children: [
                              // #
                              LabelTextView(
                                text: CustomStrings.nameLabelText,
                                style: CustomFonts.labelTextTextStyle(),
                              ),

                              // #
                              InputEmailOrNameView(
                                borderStyle: CustomFonts.textFieldStyle(),
                              ),
                            ],
                          ),

                          const Spacer(),

                          // #
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

                          const Spacer(),

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

                          const Spacer(),

                          // #
                          Column(
                            children: [
                              // #
                              LabelTextView(
                                text: CustomStrings.confirmPasswordLabelText,
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
                          SignButtonView(
                            buttonStyle: CustomFonts.signButtonStyle(),
                            text: CustomStrings.signUpText,
                            textStyle: CustomFonts.signButtonTextTextStyle(),
                          ),

                          const Spacer(),

                          // #
                          FooterTextView(
                            defaultStyle:
                                CustomFonts.alreadyHaveAccountTextTextStyle(),
                            firstText: CustomStrings.alreadyHaveAccount,
                            secondText: CustomStrings.signInText,
                            secondStyle:
                                CustomFonts.footerSignInTextTextStyle(),
                            routeName: '/sign_in_page',
                          ),

                          const Spacer(flex: 2),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
