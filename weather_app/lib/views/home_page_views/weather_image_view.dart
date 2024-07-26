import 'package:flutter/material.dart';

class WeatherImageView extends StatelessWidget {
  final Alignment alignment;
  final AssetImage image;
  final double width;

  const WeatherImageView({
    super.key,
    required this.alignment,
    required this.image,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Image(
        image: image,
        width: width,
      ),
    );
  }
}
