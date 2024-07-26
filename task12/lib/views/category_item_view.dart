import 'package:flutter/material.dart';
import 'package:task12/services/constants/colors.dart';
import 'package:task12/services/constants/fonts.dart';

class CategoryItemView extends StatelessWidget {
  final void Function() onPressed;
  final bool isSelected;
  final String text;

  const CategoryItemView({
    super.key,
    required this.onPressed,
    required this.isSelected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: isSelected ? null : Border.all(width: 1, color: CustomColors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: isSelected ? CustomColors.purple : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: CustomFonts.categoryTextStyle(isSelected ? CustomColors.white : CustomColors.grey),
          ),
        ),
      ),
    );
  }
}
