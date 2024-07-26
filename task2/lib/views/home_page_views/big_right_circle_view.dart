import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class BigRightCircleView extends StatelessWidget {
  const BigRightCircleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BigCircleClipper(),
      child: Container(
        color: ColorConstants.lightPurple,
      ),
    );
  }
}

class BigCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double x = size.width;
    final double y = size.height;

    Path path = Path()
      ..addOval(Rect.fromLTWH(x * 0.2, -(y * 0.2), y * 1, y * 1))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
