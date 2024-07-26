import 'package:flutter/material.dart';
import 'package:task10/services/constants/colors.dart';

abstract class CustomFonts {
  /// ```static const avenir = 'Avenir';```
  static const avenir = 'Avenir';

  /// ```static const avenir = 'Avenir';```
  static const muli = 'Muli';

  /// ```static const avenir = 'Avenir';```
  static const mulish = 'Mulish';

  static TextStyle appBarTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 28,
      color: CustomColors.darkBlue,
    );
  }

  static TextStyle userProfileLinkTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 17,
      letterSpacing: -0.24,
      color: CustomColors.secondDarkBlue,
    );
  }

  static List<BoxShadow> containerShadow() {
    return [
      BoxShadow(
        offset: const Offset(0, -60),
        color: CustomColors.shadowBlue.withOpacity(0.06),
        blurRadius: 10,
      ),
      BoxShadow(
        offset: const Offset(60, 0),
        color: CustomColors.shadowBlue.withOpacity(0.06),
        blurRadius: 10,
      ),
      BoxShadow(
        offset: const Offset(0, 60),
        color: CustomColors.shadowBlue.withOpacity(0.06),
        blurRadius: 10,
      ),
      BoxShadow(
        offset: const Offset(-60, 0),
        color: CustomColors.shadowBlue.withOpacity(0.06),
        blurRadius: 10,
      ),
    ];
  }

  static TextStyle userNameTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.avenir,
      fontWeight: FontWeight.w800,
      fontSize: 24,
      color: CustomColors.darkBlue,
    );
  }

  static TextStyle userJobTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: CustomColors.blueAccent,
    );
  }

  static TextStyle aboutMeTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.avenir,
      fontWeight: FontWeight.w700,
      fontSize: 19,
      color: CustomColors.darkBlue,
    );
  }

  static TextStyle userDescriptionTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.avenir,
      fontWeight: FontWeight.w400,
      fontSize: 17,
      color: CustomColors.secondDarkBlue,
    );
  }

  static TextStyle topContainerNumberTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.muli,
      fontWeight: FontWeight.w800,
      fontSize: 22,
      color: CustomColors.white,
    );
  }

  static TextStyle topContainerTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.mulish,
      fontWeight: FontWeight.w400,
      fontSize: 13,
      color: CustomColors.white,
    );
  }

  static TextStyle cardTextStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.avenir,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: CustomColors.blueAccent,
    );
  }

  static TextStyle cardDescriptionStyle() {
    return const TextStyle(
      fontFamily: CustomFonts.avenir,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: CustomColors.darkBlue,
    );
  }
}
