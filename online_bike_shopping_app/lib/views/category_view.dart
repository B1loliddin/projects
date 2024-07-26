import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/services/constants/colors.dart';
import 'package:online_bike_shopping_app/services/constants/fonts.dart';

class CategoryView extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final void Function() onPressed;
  final AssetImage? image;
  final String? text;
  final Size imageSize;
  final EdgeInsets? margin;

  const CategoryView({
    Key? key,
    required this.selectedIndex,
    required this.index,
    required this.onPressed,
    this.image,
    this.text,
    required this.imageSize,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        gradient: LinearGradient(
          colors: [
            CustomColors.white.withOpacity(.6),
            CustomColors.black.withOpacity(.6),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      margin: margin ?? const EdgeInsets.all(0),
      alignment: Alignment.center,
      child: Container(
        width: 49,
        height: 49,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          gradient: LinearGradient(
            colors: selectedIndex == index
                ? [
                    CustomColors.color34C8E8,
                    CustomColors.color4E4AF2,
                  ]
                : [
                    CustomColors.color353F54,
                    CustomColors.color222834,
                  ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: CustomColors.color2B3445.withOpacity(.5),
              offset: const Offset(0, -20),
              blurRadius: 30,
            ),
            const BoxShadow(
              color: CustomColors.color10141C,
              offset: Offset(0, -20),
              blurRadius: 30,
            ),
          ],
        ),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, double.infinity),
            backgroundColor: Colors.transparent,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            elevation: 0,
            padding: EdgeInsets.zero,
            alignment: Alignment.center,
          ),
          child: text != null
              ? Text(
                  text!,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    fontFamily: Fonts.poppins,
                    color: selectedIndex == index
                        ? CustomColors.white
                        : CustomColors.white.withOpacity(.6),
                  ),
                )
              : Image(
                  image: image!,
                  width: imageSize.width,
                  height: imageSize.height,
                  color: selectedIndex == index
                      ? CustomColors.white
                      : CustomColors.white.withOpacity(.6),
                ),
        ),
      ),
    );
  }
}
