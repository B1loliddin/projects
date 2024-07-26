import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task3/pages/log_in_page.dart';
import 'package:task3/services/constants/colors.dart';
import 'package:task3/services/constants/fonts.dart';
import 'package:task3/services/constants/images.dart';
import 'package:task3/services/constants/strings.dart';
import 'package:task3/views/general_text_field_view.dart';
import 'package:task3/views/primary_button_view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;

    void goToLogInPage() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInPage(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: GestureDetector(
          onTap: goToLogInPage,
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: CustomColors.lightBlack,
            size: 26,
          ),
        ),
      ),
      body: SizedBox(
        width: x,
        height: y,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                /// #delivery showing love
                Image(
                  image: CustomImages.deliveryShowingLove,
                  width: x * 0.75,
                ),
                const SizedBox(height: 30),

                /// #header text
                Text(
                  CustomStrings.signUpPageHeaderText,
                  style: CustomFonts.headerTextStyle(FontWeight.w700, 28),
                ),
                const SizedBox(height: 10),

                /// #header sub text
                Text(
                  CustomStrings.logInPageHeaderSubText,
                  style: CustomFonts.headerSubTextStyle(
                      FontWeight.w400, 16, CustomColors.secondGrey),
                ),
                const SizedBox(height: 30),

                /// #name text field
                GeneralTextFieldView(
                  labelText: CustomStrings.nameLabelText,
                  labelTextStyle:
                      CustomFonts.labelTextStyle(CustomColors.lightBlack),
                  hintText: CustomStrings.signUpPageNameTextFieldHintText,
                  hintTextStyle: CustomFonts.hintTextStyle(
                      FontWeight.w400, CustomColors.secondGrey),
                  contentPadding: 0,
                  isPasswordTextField: false,
                ),
                const SizedBox(height: 30),

                /// #email text field
                GeneralTextFieldView(
                  labelText: CustomStrings.emailLabelText,
                  labelTextStyle:
                      CustomFonts.labelTextStyle(CustomColors.lightBlack),
                  hintText: CustomStrings.signUpPageEmailTextFieldHintText,
                  hintTextStyle: CustomFonts.hintTextStyle(
                      FontWeight.w400, CustomColors.secondGrey),
                  contentPadding: 0,
                  isPasswordTextField: false,
                ),
                const SizedBox(height: 30),

                /// #password text field
                GeneralTextFieldView(
                  labelText: CustomStrings.passwordLabelText,
                  labelTextStyle:
                      CustomFonts.labelTextStyle(CustomColors.secondGrey),
                  hintText: 'qwerty',
                  hintTextStyle: CustomFonts.hintTextStyle(
                      FontWeight.w400, CustomColors.secondGrey),
                  contentPadding: 0,
                  isPasswordTextField: true,
                ),
                const SizedBox(height: 10),

                /// #footer text
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontFamily: CustomFonts.nunito,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          letterSpacing: 0.2,
                          color: CustomColors.secondGrey,
                        ),
                        children: [
                          TextSpan(
                              text: CustomStrings.signUpPageFirstFooterText),
                          TextSpan(
                            text: CustomStrings.signUpPageSecondFooterText,
                            style: TextStyle(
                              color: CustomColors.green,
                            ),
                          ),
                          TextSpan(
                              text: CustomStrings.signUpPageThirdFooterText),
                          TextSpan(
                            text: CustomStrings.signUpPageFourthFooterText,
                            style: TextStyle(
                              color: CustomColors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),

                /// #register now button
                PrimaryButtonView(
                  backgroundButtonColor: CustomColors.orange,
                  onPressed: () {},
                  text: CustomStrings.registerNowButtonText,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
