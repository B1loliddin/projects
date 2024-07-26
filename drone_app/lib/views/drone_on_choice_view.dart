import 'package:drone_app/services/constants/colors.dart';
import 'package:drone_app/services/constants/images.dart';
import 'package:flutter/material.dart';

class DroneOnChoiceView extends StatelessWidget {
  final Alignment dronePosition;
  final double droneScale;
  final double paddingLeft;
  final double paddingRight;
  final AssetImage droneImage;

  const DroneOnChoiceView({
    super.key,
    required this.dronePosition,
    required this.droneScale,
    required this.paddingLeft,
    required this.paddingRight,
    required this.droneImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// #
        Container(
          width: 170,
          height: 330,
          margin: const EdgeInsets.only(right: 35),
          decoration: BoxDecoration(
            color: CustomColors.purple.withOpacity(0.27),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          child: const Stack(
            children: [
              /// #lines up image
              Image(image: CustomImages.linesUp),

              /// #dji logo
              Align(
                alignment: Alignment(0, -0.85),
                child: Image(
                  image: CustomImages.dJILogo,
                  width: 60,
                ),
              ),
            ],
          ),
        ),

        /// #drone image
        Align(
          alignment: dronePosition,
          child: Transform.scale(
            scale: droneScale,
            child: Padding(
              padding: EdgeInsets.only(left: paddingLeft, right: paddingRight),
              child: Image(
                image: droneImage,
                width: 100,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
