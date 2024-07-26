import 'package:flutter/material.dart';
import 'package:task3/services/constants/colors.dart';
import 'package:task3/services/constants/fonts.dart';
import 'package:task3/services/constants/images.dart';
import 'package:task3/services/constants/strings.dart';
import 'package:task3/views/continue_with_facebook_button_view.dart';
import 'package:task3/views/phone_number_text_field_view.dart';
import 'package:task3/views/sign_in_with_google_button_view.dart';

class ConnectWithSocialMediaPage extends StatelessWidget {
  const ConnectWithSocialMediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SizedBox(
        width: x,
        height: y,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),

              /// #vegetables image
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: CustomImages.vegetables,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ],
              ),

              /// #header text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      CustomStrings.connectWithSocialMediaPageHeaderText,
                      style: CustomFonts.headerTextStyle(FontWeight.w600, 28),
                    ),
                  ],
                ),
              ),

              /// #phone number text field
              const PhoneNumberTextFieldView(
                isHaveSuffixIcon: true,
              ),
              const SizedBox(height: 20),

              /// #divider text
              Text(
                CustomStrings.connectWithSocialMediaPageDividerText,
                style: CustomFonts.dividerTextStyle(),
              ),
              const SizedBox(height: 70),

              /// #sign in with google button
              const SignInWithGoogleButtonView(),
              const SizedBox(height: 25),

              /// #continue with facebook button
              const ContinueWithFacebookButtonView(),
            ],
          ),
        ),
      ),
    );
  }
}
