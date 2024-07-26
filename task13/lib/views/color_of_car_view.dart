import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';

class ColorOfCarView extends StatelessWidget {
  final void Function() onTap;
  final bool isSelected;
  final Color color;
  final LinearGradient? gradient;

  const ColorOfCarView({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.color, this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isSelected
          ? Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 66,
                  height: 66,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomColors.red,
                  ),
                ),
                Container(
                  width: 56,
                  height: 56,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomColors.secondGrey,
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                  ),
                ),
              ],
            )
          : ClipOval(
              child: ColoredBox(
                color: color,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: gradient,
                  ),
                  child: const SizedBox(
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
    );
  }
}
