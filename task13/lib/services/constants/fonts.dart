import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';

abstract class CustomFonts {
  /// ```static const gothamPro = 'GothamPro';```
  static const gothamPro = 'GothamPro';

  static TextStyle homePageHeaderTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 36,
      color: CustomColors.white,
    );
  }

  static TextStyle homePagePrimaryCarTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 36,
      color: CustomColors.white,
    );
  }

  static TextStyle homePageSecondaryCarTextStyle() {
    return TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 28,
      color: CustomColors.white.withOpacity(0.4),
    );
  }

  static TextStyle primaryCharacteristicsTextStyle(Color color) {
    return TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontWeight: FontWeight.w600,
      fontSize: 36,
      color: color,
    );
  }

  static TextStyle secondaryCharacteristicsTextStyle(Color color) {
    return TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 14,
      color: color,
    );
  }

  static TextStyle homePageFooterDefaultTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: CustomColors.grey,
    );
  }

  static ButtonStyle primaryButtonStyle(double width, double height) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        side: BorderSide(width: 2, color: CustomColors.red),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      backgroundColor: CustomColors.transparent,
      fixedSize: Size(width, height),
    );
  }

  static TextStyle primaryButtonTextStyle(Color color) {
    return TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: color,
    );
  }

  static TextStyle descriptionTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 17.5,
      color: CustomColors.grey,
    );
  }

  static TextStyle tabTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontWeight: FontWeight.w600,
      fontSize: 18,
    );
  }

  static TextStyle headerTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 24,
      color: CustomColors.blueGrey,
    );
  }

  static TextStyle configurationTextStyle(Color color) {
    return TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 26,
      color: color,
    );
  }

  static TextStyle configurationPriceTextStyle(Color color) {
    return TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: 22,
      color: color,
    );
  }

  static TextStyle totalPriceTextStyle(double fontSize, Color color) {
    return TextStyle(
      fontFamily: CustomFonts.gothamPro,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle exteriorPageSecondaryInformationTextStyle() {
    return const TextStyle(
        fontFamily: CustomFonts.gothamPro,
        fontSize: 17,
        color: CustomColors.black);
  }
}
