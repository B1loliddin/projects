import 'dart:math';

import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/services/constants/colors.dart';

class BottomBarItemView extends StatelessWidget {
  final AssetImage icon;
  final int selectedIndex;
  final int index;
  final Size iconSize;
  final void Function() onPressed;

  const BottomBarItemView({
    Key? key,
    required this.icon,
    required this.selectedIndex,
    required this.index,
    required this.iconSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: selectedIndex == index
          ? EdgeInsets.only(bottom: 10)
          : EdgeInsets.zero,
      child: ClipPath(
        clipper: BottomItemClipper(),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: selectedIndex == index
                  ? [
                      CustomColors.color34C8E8,
                      CustomColors.color4E4AF2,
                    ]
                  : [
                      Colors.transparent,
                      Colors.transparent,
                    ],
            ),
            boxShadow: selectedIndex == index
                ? [
                    BoxShadow(
                      color: CustomColors.color10141C.withOpacity(.6),
                      offset: const Offset(0, 20),
                      blurRadius: 30,
                    ),
                  ]
                : [],
          ),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(60, 60),
              backgroundColor: Colors.transparent,
              elevation: 0,
              padding: EdgeInsets.zero,
            ),
            child: Image(
              image: icon,
              width: iconSize.width,
              height: iconSize.height,
              color: selectedIndex == index
                  ? CustomColors.white
                  : Colors.white.withOpacity(.6),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomItemClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

  @override
  Path getClip(Size size) {
    final x = size.width;
    final y = size.height;
    // var roundnessFactor = 10.0;

    Path path = Path()
      ..arcTo(Rect.fromCircle(center: Offset(10, 20), radius: 10), pi, pi / 2,
          false)
      ..lineTo(x - 10, 0)
      ..arcTo(Rect.fromCircle(center: Offset(x - 10, 10), radius: 10), -pi / 2,
          pi / 2, false)
      ..lineTo(x, y - 20)
      ..arcTo(Rect.fromCircle(center: Offset(x - 10, y - 20), radius: 10), 0,
          pi / 2, false)
      ..lineTo(10, y)
      ..arcTo(Rect.fromCircle(center: Offset(10, y - 10), radius: 10), pi / 2,
          pi / 2, false)
      ..close();

    return path;
  }
}
