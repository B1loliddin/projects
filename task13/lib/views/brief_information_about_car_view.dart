import 'package:flutter/material.dart';
import 'package:task13/services/constants/fonts.dart';

class BriefInformationAboutCar extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final Color primaryTextColor;
  final Color secondaryTextColor;

  const BriefInformationAboutCar({
    super.key,
    required this.primaryText,
    required this.secondaryText,
    required this.primaryTextColor,
    required this.secondaryTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// #primary information
        PrimaryInformationView(
          text: primaryText,
          color: primaryTextColor,
        ),
        const SizedBox(height: 8),

        /// #secondary information
        SecondaryInformationView(
          text: secondaryText,
          color: secondaryTextColor,
        ),
      ],
    );
  }
}

class SecondaryInformationView extends StatelessWidget {
  final String text;
  final Color color;

  const SecondaryInformationView({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomFonts.secondaryCharacteristicsTextStyle(color),
    );
  }
}

class PrimaryInformationView extends StatelessWidget {
  final String text;
  final Color color;

  const PrimaryInformationView({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomFonts.primaryCharacteristicsTextStyle(color),
    );
  }
}
