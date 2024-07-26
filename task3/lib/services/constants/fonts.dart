import 'package:flutter/material.dart';
import 'package:task3/services/constants/colors.dart';

abstract class CustomFonts {
  ///```static const nunito = 'Nunito';```
  static const nunito = 'Nunito';

  static TextStyle headerTextStyle(FontWeight fontWeight, double fontSize,
      [double? letterSpacing]) {
    return TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: fontWeight,
      fontSize: fontSize,
      letterSpacing: letterSpacing,
      color: CustomColors.lightBlack,
    );
  }

  static TextStyle headerSubTextStyle(
      FontWeight fontWeight, double fontSize, Color color) {
    return TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static ButtonStyle primaryButtonStyle(double x, Color backgroundColors) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      fixedSize: Size(x * 0.6, 60),
      backgroundColor: backgroundColors,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }

  static TextStyle primaryButtonTextStyle(FontWeight fontWeight) {
    return TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: fontWeight,
      fontSize: 19,
      color: CustomColors.white,
    );
  }

  static TextStyle phoneNumberTextFieldHintTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: CustomColors.black,
    );
  }

  static TextStyle dividerTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: CustomColors.grey,
    );
  }

  static TextStyle signInWithGoogleTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: FontWeight.w600,
      fontSize: 19,
      color: CustomColors.lightBlack,
    );
  }

  static TextStyle continueWithFacebookTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: FontWeight.w600,
      fontSize: 19,
      color: CustomColors.white,
    );
  }

  static TextStyle labelTextStyle(Color color) {
    return TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: color,
    );
  }

  static TextStyle helperTextStyle(double fontSize, Color color) {
    return TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: FontWeight.w400,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle hintTextStyle(FontWeight fontWeight, Color color) {
    return TextStyle(
      fontFamily: CustomFonts.nunito,
      fontWeight: fontWeight,
      fontSize: 16,
      color: color,
    );
  }
}
