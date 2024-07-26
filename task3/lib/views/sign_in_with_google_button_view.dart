import 'package:flutter/material.dart';
import 'package:task3/pages/authentication_page.dart';
import 'package:task3/services/constants/colors.dart';
import 'package:task3/services/constants/fonts.dart';
import 'package:task3/services/constants/icons.dart';
import 'package:task3/services/constants/strings.dart';

class SignInWithGoogleButtonView extends StatelessWidget {
  const SignInWithGoogleButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthenticationPage(),
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 60,
        decoration: BoxDecoration(
          color: CustomColors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(-1, 0),
              color: CustomColors.black.withOpacity(0.07),
              blurRadius: 6,
            ),
            BoxShadow(
              offset: const Offset(0, -1),
              color: CustomColors.black.withOpacity(0.07),
              blurRadius: 6,
            ),
            BoxShadow(
              offset: const Offset(1, 0),
              color: CustomColors.black.withOpacity(0.07),
              blurRadius: 6,
            ),
            BoxShadow(
              offset: const Offset(0, 1),
              color: CustomColors.black.withOpacity(0.07),
              blurRadius: 6,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// #sign in with google text
              Text(
                CustomStrings.signInWithGoogleButtonText,
                style: CustomFonts.signInWithGoogleTextStyle(),
              ),

              /// #google logo
              const Image(
                image: CustomIcons.googleLogo,
                width: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
