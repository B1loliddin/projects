import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/icons.dart';
import 'package:weather_app/views/settings_page_views/text_and_icon_view.dart';

class MeasurementView extends StatelessWidget {
  final TextView text;
  final Color color;

  const MeasurementView({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // #
        text,

        // #
        ClipOval(
          child: ColoredBox(
            color: color,
            child: const SizedBox(
              width: 24,
              height: 24,
              child: Align(
                child: Image(
                  image: CustomIcons.checkMark,
                  width: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
