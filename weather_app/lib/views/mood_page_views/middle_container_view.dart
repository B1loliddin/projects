import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/colors.dart';
import 'package:weather_app/services/constants/fonts.dart';

class MiddleContainerView extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final bool isFilled;

  const MiddleContainerView({
    super.key,
    required this.width,
    required this.height,
    required this.text,
    required this.isFilled,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: isFilled
            ? null
            : Border.all(width: 1, color: CustomColors.blueGrey),
        color: isFilled ? CustomColors.blueGrey : null,
      ),
      child: Text(
        text,
        style: CustomFonts.middleContainerTextStyle(isFilled),
      ),
    );
  }
}
