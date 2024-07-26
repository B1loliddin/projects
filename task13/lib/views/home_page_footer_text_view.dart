import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/fonts.dart';

class HomePageFooterTextView extends StatelessWidget {
  final String firstText;
  final String secondText;
  const HomePageFooterTextView({super.key, required this.firstText, required this.secondText,});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: CustomFonts.homePageFooterDefaultTextStyle(),
        children: <TextSpan>[
          TextSpan(
            text: firstText,
          ),
          TextSpan(
            text: secondText,
            style: const TextStyle(color: CustomColors.white),
          ),
        ],
      ),
    );
  }
}
