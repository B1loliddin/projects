import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/colors.dart';

abstract class CustomFonts {
  /// ```static const poppins = 'Poppins';```
  static const poppins = 'Poppins';

  /// ```static const syncopate = 'Syncopate';```
  static const syncopate = 'Syncopate';

  static TextStyle weatherXTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.syncopate,
      fontWeight: FontWeight.w700,
      fontSize: 27,
      color: CustomColors.white,
    );
  }

  static TextStyle introductionTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w700,
      fontSize: 42,
      color: CustomColors.darkBlue,
    );
  }

  static ButtonStyle primaryButtonStyle() {
    return ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: CustomColors.darkBlue,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }

  static TextStyle primaryButtonTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: CustomColors.whiteAccent,
    );
  }

  static TextStyle appBarTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w400,
      fontSize: 13,
      color: CustomColors.blueGrey,
    );
  }

  static TextStyle headerTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w500,
      fontSize: 24,
      color: CustomColors.secondDarkBlue,
    );
  }

  static TextStyle firstFooterTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      color: CustomColors.blueGrey,
    );
  }

  static TextStyle secondFooterTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w500,
      fontSize: 13,
      color: CustomColors.darkBlue,
    );
  }

  static TextStyle todayIsLikeTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: CustomColors.white,
    );
  }

  static TextStyle twentyFiveCelsiusTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w400,
      fontSize: 45,
      color: CustomColors.white,
    );
  }

  static TextStyle middleContainerTextStyle(bool isFilled) {
    return TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: isFilled ? CustomColors.whiteAccent : CustomColors.blueGrey,
    );
  }

  static TextStyle hintTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w400,
      fontSize: 13,
      color: CustomColors.blueGrey,
    );
  }

  static TextStyle settingsPageSecondaryTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: CustomColors.black,
    );
  }

  static TextStyle settingsPageMainTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: CustomColors.blueGrey,
    );
  }

  static TextStyle errorTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.poppins,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: CustomColors.black,
    );
  }
}
