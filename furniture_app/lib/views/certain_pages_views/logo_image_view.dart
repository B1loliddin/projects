import 'package:flutter/material.dart';

class LogoImageView extends StatelessWidget {
  final AssetImage image;

  const LogoImageView({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: image,
      width: 64,
    );
  }
}
