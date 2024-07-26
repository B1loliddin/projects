import 'package:flutter/material.dart';
import 'package:task3/pages/sign_up_page.dart';
import 'package:task3/services/constants/colors.dart';
import 'package:task3/services/constants/fonts.dart';
import 'package:task3/services/constants/icons.dart';
import 'package:task3/services/constants/strings.dart';

class ContinueWithFacebookButtonView extends StatelessWidget {
  const ContinueWithFacebookButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    void goToSignUpPage() {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        ),
        (route) => false,
      );
    }

    return GestureDetector(
      onTap: goToSignUpPage,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 60,
        decoration: const BoxDecoration(
          color: CustomColors.blue,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// #continue with facebook
              Text(
                CustomStrings.continueWithFacebookButtonText,
                style: CustomFonts.continueWithFacebookTextStyle(),
              ),

              /// #facebook logo
              const Image(
                image: CustomIcons.facebookLogo,
                width: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
