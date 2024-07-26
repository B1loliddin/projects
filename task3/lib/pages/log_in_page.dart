import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task3/pages/sign_up_page.dart';
import 'package:task3/services/constants/colors.dart';
import 'package:task3/services/constants/fonts.dart';
import 'package:task3/services/constants/images.dart';
import 'package:task3/services/constants/strings.dart';
import 'package:task3/views/general_text_field_view.dart';
import 'package:task3/views/primary_button_view.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;

    void goToSignUpPage() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: CustomColors.lightBlack,
          size: 26,
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
                /// #delivery holding box
                Image(
                  image: CustomImages.deliveryHoldingBox,
                  width: x * 0.75,
                ),
                const SizedBox(height: 30),

                /// #header text
                Text(
                  CustomStrings.logInPageHeaderText,
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

                /// #email text field
                GeneralTextFieldView(
                  labelText: CustomStrings.emailLabelText,
                  labelTextStyle:
                      CustomFonts.labelTextStyle(CustomColors.lightBlack),
                  hintText: CustomStrings.logInPageEmailTextFieldHintText,
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

                /// #helper text
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      CustomStrings.forgotPasswordHelperText,
                      style:
                          CustomFonts.helperTextStyle(14, CustomColors.orange),
                    ),
                  ],
                ),
                SizedBox(height: y * 0.04),

                /// #login now button
                PrimaryButtonView(
                  backgroundButtonColor: CustomColors.orange,
                  onPressed: () {},
                  text: CustomStrings.logInNowButtonText,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(height: 15),

                /// #footer text
                GestureDetector(
                  onTap: goToSignUpPage,
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: CustomFonts.nunito,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        letterSpacing: 0.2,
                        color: CustomColors.lightBlack,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: CustomStrings.logInPageFirstFooterText),
                        TextSpan(
                          text: CustomStrings.logInPageSecondFooterText,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: CustomColors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
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
