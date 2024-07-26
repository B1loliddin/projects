import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/colors.dart';

abstract class CustomFonts {
  /// ```static const gelasio = 'Gelasio';```
  static const gelasio = 'Gelasio';

  /// ```static const merriweather = 'Merriweather';```
  static const merriweather = 'Merriweather';

  /// ```static const nunitoSans = 'NunitoSans';```
  static const nunitoSans = 'NunitoSans';

  static TextStyle makeYourTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.gelasio,
      fontWeight: FontWeight.w600,
      fontSize: 24,
      letterSpacing: 0.5,
      color: CustomColors.darkGrey,
    );
  }

  static TextStyle homeBeautifulTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.gelasio,
      fontWeight: FontWeight.w700,
      fontSize: 30,
      color: CustomColors.lightBlack,
    );
  }

  static TextStyle boardingPageDescriptionTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunitoSans,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      wordSpacing: 8,
      height: 1.9,
      leadingDistribution: TextLeadingDistribution.even,
      color: CustomColors.grey,
    );
  }

  static ButtonStyle getStartedButtonStyle() {
    return ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: CustomColors.darkBlack,
    );
  }

  static TextStyle getStartedButtonTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.gelasio,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: CustomColors.white,
    );
  }

  static TextStyle helloTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.merriweather,
      fontWeight: FontWeight.w400,
      fontSize: 30,
      color: CustomColors.greyAccent,
    );
  }

  static TextStyle welcomeBackTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.merriweather,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      letterSpacing: 0.5,
      color: CustomColors.lightBlack,
    );
  }

  static TextStyle labelTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunitoSans,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: CustomColors.greyAccent,
    );
  }

  static UnderlineInputBorder textFieldStyle() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: CustomColors.lightGrey,
      ),
    );
  }

  static TextStyle forgotPasswordTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunitoSans,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: CustomColors.lightBlack,
    );
  }

  static ButtonStyle signButtonStyle() {
    return ElevatedButton.styleFrom(
      elevation: 6,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      backgroundColor: CustomColors.lightBlack,
    );
  }

  static TextStyle signButtonTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunitoSans,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: CustomColors.white,
    );
  }

  static TextStyle signUpTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunitoSans,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: CustomColors.lightBlack,
    );
  }

  static TextStyle welcomeTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.merriweather,
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: CustomColors.lightBlack,
    );
  }

  static TextStyle alreadyHaveAccountTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunitoSans,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: CustomColors.grey,
    );
  }

  static TextStyle footerSignInTextTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.nunitoSans,
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: CustomColors.lightBlack,
    );
  }
}
