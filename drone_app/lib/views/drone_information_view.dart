import 'package:drone_app/services/constants/colors.dart';
import 'package:flutter/material.dart';

class DroneInformationView extends StatelessWidget {
  final Color? firstGradientColor;
  final Color? secondGradientColor;
  final Alignment? beginAlignment;
  final Alignment? endAlignment;
  final AssetImage icon;
  final String firstText;
  final String secondText;

  const DroneInformationView(
      {super.key,
      this.firstGradientColor,
      this.secondGradientColor,
      this.beginAlignment,
      this.endAlignment,
      required this.icon,
      required this.firstText,
      required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        gradient: firstGradientColor == null
            ? null
            : LinearGradient(
                colors: [
                  firstGradientColor!,
                  secondGradientColor!,
                ],
                begin: beginAlignment!,
                end: endAlignment!,
              ),
        color: firstGradientColor == null ? null : CustomColors.darkBlue,
      ),
      child: Column(
        children: [
          const SizedBox(height: 15),

          /// #
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image(
                  image: icon,
                  width: 25,
                ),
                SizedBox(width: 5),
                Text(
                  firstText,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: CustomColors.lightPurple,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          /// #
          Text(
            secondText,
            style: const TextStyle(
              fontSize: 18,
              color: CustomColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
