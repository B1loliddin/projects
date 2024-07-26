import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';
import '../../services/constants/image_constants.dart';
import '../../services/constants/string_constants.dart';

class SignInButtonView extends StatelessWidget {
  const SignInButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 44,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
              colors: [
                ColorConstants.lightPurple,
                ColorConstants.darkPurple,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const Row(
            children: [
              Spacer(),

              // #
              Text(
                StringConstants.signInButtonText,
                style: TextStyle(
                  fontFamily: 'DMSans',
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: ColorConstants.white,
                ),
              ),

              Spacer(),

              // #
              Image(
                image: AssetImage(ImageConstants.logInIcon),
                width: 26,
              ),
            ],
          ),
        ),
      ),
    );
  }
}