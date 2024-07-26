import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/fonts.dart';

class PrimaryConfigurationTextView extends StatelessWidget {
  final String configurationText;
  final String configurationPriceText;
  final bool isSelected;
  final String totalPrice;

  const PrimaryConfigurationTextView({
    super.key,
    required this.configurationText,
    required this.configurationPriceText,
    required this.isSelected,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// #configuration text
        _ConfigurationTextView(
          text: configurationText,
          isSelected: isSelected,
          totalPrice: totalPrice,
        ),
        const SizedBox(height: 10),

        /// #configuration price text
        _ConfigurationPriceTextView(
          text: configurationPriceText,
          isSelected: isSelected,
          totalPrice: totalPrice,
        ),
      ],
    );
  }
}

class _ConfigurationPriceTextView extends StatelessWidget {
  final String text;
  final bool isSelected;
  final String totalPrice;

  const _ConfigurationPriceTextView({
    required this.text,
    required this.isSelected,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isSelected
          ? CustomFonts.configurationPriceTextStyle(CustomColors.red)
          : CustomFonts.configurationPriceTextStyle(CustomColors.blueGrey),
    );
  }
}

class _ConfigurationTextView extends StatelessWidget {
  final String text;
  final bool isSelected;
  final String totalPrice;

  const _ConfigurationTextView({
    required this.text,
    required this.isSelected,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isSelected
          ? CustomFonts.configurationPriceTextStyle(CustomColors.black)
          : CustomFonts.configurationPriceTextStyle(CustomColors.grey),
    );
  }
}
