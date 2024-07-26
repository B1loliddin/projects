import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/icons.dart';
import 'package:weather_app/services/constants/images.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(26)),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          // #
          Image(image: CustomImages.map),

          // #
          Align(
            alignment: Alignment(-0.48, 0),
            child: Image(
              image: CustomIcons.redLocation,
              width: 18,
            ),
          ),
        ],
      ),
    );
  }
}
