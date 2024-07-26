import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/services/constants/colors.dart';

class BlueButton extends StatelessWidget {
  final AssetImage image;
  final void Function() onPressed;
  final double? width;
  final double? height;
  final double? imageWidth;
  final double? imageHeight;
  final double? radius;
  final List<Color>? gradient;
  final Color? iconColor;

  const BlueButton({
    Key? key,
    required this.image,
    required this.onPressed,
    this.width,
    this.height,
    this.imageWidth,
    this.imageHeight,
    this.radius,
    this.gradient,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 44,
      height: height ?? 44,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(radius ?? 10),
        ),
        gradient: LinearGradient(
          colors: gradient ??
              [
                CustomColors.color37B6E9,
                CustomColors.color4B4CED,
              ],
          end: Alignment.bottomRight,
          begin: Alignment.topLeft,
        ),
      ),
      alignment: Alignment.center,
      child: Container(
        width: width ?? 44,
        height: height ?? 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 10),
          ),
          gradient: LinearGradient(
            colors: gradient ??
                [
                  CustomColors.white.withOpacity(.1),
                  CustomColors.black.withOpacity(.1),
                ],
            end: Alignment.bottomRight,
            begin: Alignment.topLeft,
          ),
        ),
        alignment: Alignment.center,
        child: Container(
          width: width != null ? width! - 2 : 42,
          height: height != null ? height! - 2 : 42,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(radius ?? 10),
            ),
            gradient: LinearGradient(
              colors: gradient ??
                  [
                    CustomColors.color34C8E8,
                    CustomColors.color4E4AF2,
                  ],
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
            ),
            boxShadow: width != null
                ? []
                : [
                    BoxShadow(
                      offset: const Offset(0, -20),
                      color: CustomColors.color242C3B.withOpacity(.5),
                      blurRadius: 30,
                    ),
                    const BoxShadow(
                      offset: Offset(0, 20),
                      color: CustomColors.color10141C,
                      blurRadius: 30,
                    ),
                  ],
          ),
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, double.infinity),
              backgroundColor: Colors.transparent,
              elevation: 0,
              padding: EdgeInsets.zero,
            ),
            child: Image(
              image: image,
              width: imageWidth ?? 20,
              height: imageHeight ?? 20,
              color: iconColor ?? CustomColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
