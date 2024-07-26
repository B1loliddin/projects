import 'package:drone_app/services/constants/colors.dart';
import 'package:drone_app/services/constants/strings.dart';
import 'package:flutter/material.dart';

class DroneOnSaleView extends StatelessWidget {
  final String droneModel;
  final String littleInformationAboutDrone;
  final void Function() buyNowButtonOnPressed;
  final AssetImage droneImage;
  final double scaleOfDroneImage;
  final Alignment alignmentOfDroneImage;

  const DroneOnSaleView({
    super.key,
    required this.droneModel,
    required this.littleInformationAboutDrone,
    required this.buyNowButtonOnPressed,
    required this.droneImage,
    required this.scaleOfDroneImage,
    required this.alignmentOfDroneImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// #drone container
        Container(
          width: 320,
          margin: const EdgeInsets.only(right: 25),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(
              colors: [
                CustomColors.purple,
                CustomColors.darkestBlue,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                /// #drone model and little information about drone
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 135),

                    /// #drone model
                    Text(
                      '${droneModel.substring(0, 7)}...',
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: CustomColors.white,
                      ),
                    ),
                    const SizedBox(height: 5),

                    /// #little information about drone
                    Text(
                      '${littleInformationAboutDrone.substring(0, 45)}...',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: CustomColors.lightPurple,
                      ),
                    ),
                  ],
                ),

                /// #buy now button
                BuyNowButtonView(
                  buyNowButtonOnPressed: buyNowButtonOnPressed,
                ),
              ],
            ),
          ),
        ),

        /// #drone image
        SizedBox(
          height: 250,
          width: 320,
          child: Align(
            alignment: alignmentOfDroneImage,
            child: Transform.scale(
              scale: scaleOfDroneImage,
              child: Image(
                image: droneImage,
                width: 300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BuyNowButtonView extends StatelessWidget {
  final void Function() buyNowButtonOnPressed;

  const BuyNowButtonView({
    super.key,
    required this.buyNowButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 125,
          height: 60,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            gradient: LinearGradient(
              colors: [
                CustomColors.lightBlue,
                CustomColors.lightBlue,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: MaterialButton(
            onPressed: buyNowButtonOnPressed,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: const Text(
              CustomStrings.buyNowButtonText,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: CustomColors.darkestBlue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
