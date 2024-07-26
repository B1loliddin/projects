import 'package:flutter/material.dart';
import 'package:task3/services/constants/fonts.dart';
import 'package:task3/services/constants/images.dart';
import 'package:task3/services/constants/strings.dart';
import 'package:task3/views/phone_number_text_field_view.dart';

class SignUpWithPhoneNumberPage extends StatelessWidget {
  const SignUpWithPhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        width: x,
        height: y,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),

              /// #girl sitting on chair
              const Image(image: CustomImages.girlSittingOnChair),
              const SizedBox(height: 5),

              /// #header text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      CustomStrings.signUpWithPhoneNumberPageHeaderText,
                      style: CustomFonts.headerTextStyle(FontWeight.w600, 28),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),

              /// #phone number text field
              const PhoneNumberTextFieldView(isHaveSuffixIcon: false),
            ],
          ),
        ),
      ),
    );
  }
}
