import 'package:flutter/material.dart';
import 'package:task10/services/constants/fonts.dart';

class TopContainerView extends StatelessWidget {
  final Color containerColor;
  final String firstText;
  final String secondText;

  const TopContainerView({
    super.key,
    required this.containerColor,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: containerColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // #
          Text(
            firstText,
            style: CustomFonts.topContainerNumberTextStyle(),
          ),
          const SizedBox(height: 4),

          // #
          Text(
            secondText,
            style: CustomFonts.topContainerTextStyle(),
          ),
        ],
      ),
    );
  }
}
