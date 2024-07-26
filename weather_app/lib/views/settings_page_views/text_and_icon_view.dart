import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/fonts.dart';

class TextAndIconView extends StatelessWidget {
  final Widget icon;
  final TextView text;

  const TextAndIconView({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // #
        icon,
        const SizedBox(width: 20),

        // #
        text
      ],
    );
  }
}

class TextView extends StatelessWidget {
  final String text;

  const TextView({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: CustomFonts.settingsPageMainTextStyle(),
    );
  }
}

class IconView extends StatelessWidget {
  final AssetImage icon;

  const IconView({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: icon,
      width: 35,
    );
  }
}
