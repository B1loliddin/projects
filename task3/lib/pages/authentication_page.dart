import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task3/pages/sign_up_page.dart';
import 'package:task3/services/constants/colors.dart';
import 'package:task3/services/constants/fonts.dart';
import 'package:task3/services/constants/icons.dart';
import 'package:task3/services/constants/strings.dart';
import 'package:task3/views/general_text_field_view.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;

    void goToSignUpPage() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        ),
      );
    }

    void gotoConnectWithSocialMediaPage() {
      Navigator.pop(context);
    }

    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: GestureDetector(
          onTap: gotoConnectWithSocialMediaPage,
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
          child: Column(
            children: [
              const SizedBox(height: 25),

              /// #header text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      CustomStrings.authenticationPageHeaderText,
                      style: CustomFonts.headerTextStyle(FontWeight.w600, 28),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              /// #label text
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 5),
                child: GeneralTextFieldView(
                  labelText: CustomStrings.codeLabelText,
                  labelTextStyle:
                      CustomFonts.labelTextStyle(CustomColors.secondGrey),
                  hintText: '- - - -',
                  hintTextStyle: CustomFonts.hintTextStyle(
                    FontWeight.w900,
                    CustomColors.black,
                  ),
                  contentPadding: 6,
                  isPasswordTextField: false,
                ),
              ),
              const SizedBox(height: 10),

              /// #resend code text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      CustomStrings.resendCodeHelperText,
                      style:
                          CustomFonts.helperTextStyle(16, CustomColors.green),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: goToSignUpPage,
          elevation: 0,
          backgroundColor: CustomColors.orange,
          child: const Image(
            image: CustomIcons.arrowForward,
            width: 18,
          ),
        ),
      ),
    );
  }
}
