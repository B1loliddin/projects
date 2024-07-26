import 'package:drone_app/services/constants/colors.dart';
import 'package:drone_app/services/constants/icons.dart';
import 'package:drone_app/services/constants/images.dart';
import 'package:drone_app/services/constants/strings.dart';
import 'package:drone_app/views/drone_on_choice_view.dart';
import 'package:drone_app/views/drone_on_sale_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;

    List<DroneOnSaleView?> dronesOnSale = [
      null,
      DroneOnSaleView(
        droneModel: CustomStrings.dJIAir2,
        littleInformationAboutDrone: CustomStrings.dJIAir2LittleInformation,
        buyNowButtonOnPressed: () {
          Navigator.pushNamed(
            context,
            '/details_page',
            arguments: DroneOnSaleView(
              droneModel: CustomStrings.dJIAir2,
              littleInformationAboutDrone:
                  CustomStrings.dJIAir2LittleInformation,
              buyNowButtonOnPressed: () {},
              droneImage: CustomImages.dJIAir2S,
              scaleOfDroneImage: 1.5,
              alignmentOfDroneImage: const Alignment(2.5, -2),
            ),
          );
        },
        droneImage: CustomImages.dJIAir2S,
        scaleOfDroneImage: 1.5,
        alignmentOfDroneImage: const Alignment(2.5, -2),
      ),
      DroneOnSaleView(
        droneModel: CustomStrings.dJIMatrice30Series,
        littleInformationAboutDrone:
            CustomStrings.dJIMatrice30SeriesLittleInformation,
        buyNowButtonOnPressed: () {
          Navigator.pushNamed(
            context,
            '/details_page',
            arguments: DroneOnSaleView(
              droneModel: CustomStrings.dJIMatrice30Series,
              littleInformationAboutDrone:
                  CustomStrings.dJIMatrice30SeriesLittleInformation,
              buyNowButtonOnPressed: () {},
              droneImage: CustomImages.dJIMatrice30Series,
              scaleOfDroneImage: 1.8,
              alignmentOfDroneImage: const Alignment(0, -1.5),
            ),
          );
        },
        droneImage: CustomImages.dJIMatrice30Series,
        scaleOfDroneImage: 1.8,
        alignmentOfDroneImage: const Alignment(0, -1.5),
      ),
    ];

    List<DroneOnChoiceView?> dronesOnChoice = [
      null,
      const DroneOnChoiceView(
        dronePosition: Alignment(0, 0.3),
        droneScale: 2.5,
        paddingLeft: 20,
        paddingRight: 0,
        droneImage: CustomImages.redDrone,
      ),
      const DroneOnChoiceView(
        dronePosition: Alignment(0, 0.3),
        droneScale: 4,
        paddingLeft: 0,
        paddingRight: 20,
        droneImage: CustomImages.blackDrone,
      ),
      const DroneOnChoiceView(
        dronePosition: Alignment(0, 0.3),
        droneScale: 4,
        paddingLeft: 0,
        paddingRight: 20,
        droneImage: CustomImages.blackDrone,
      ),
    ];

    return Scaffold(
      backgroundColor: CustomColors.darkestBlue,
      appBar: AppBar(
        centerTitle: false,
        forceMaterialTransparency: true,
        titleSpacing: 25,
        title: Image(image: CustomImages.logoAndName, width: x * 0.3),
        actions: <Widget>[
          MaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            child: Image(image: CustomIcons.userCircle, width: x * 0.12),
          ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 50),

              /// #drones
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  itemCount: 3,
                  itemBuilder: (_, i) {
                    if (i == 0) {
                      return const SizedBox(width: 25);
                    } else {
                      return dronesOnSale[i];
                    }
                  },
                ),
              ),
              const SizedBox(height: 40),

              /// #new arrivals text, bubbles icon, arrow top right icon
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    /// #new arrivals text and bubbles icon
                    Stack(
                      children: [
                        /// #new arrivals text
                        Text(
                          CustomStrings.newArrivals,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                            color: CustomColors.white,
                          ),
                        ),

                        /// #bubbles
                        SizedBox(
                          width: 100,
                          child: Align(
                            alignment: Alignment(1, 0),
                            child: Image(
                              image: CustomIcons.bubbles,
                              width: 35,
                            ),
                          ),
                        ),
                      ],
                    ),

                    /// #arrow top right icon
                    Image(image: CustomIcons.arrowTopRight, width: 45),
                  ],
                ),
              ),
              const SizedBox(height: 40),

              /// #drones on choice
              SizedBox(
                height: 330,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, i) {
                    if (i == 0) {
                      return const SizedBox(width: 25);
                    } else {
                      return dronesOnChoice[i];
                    }
                  },
                ),
              ),
            ],
          ),

          /// #top left light
          Align(
            alignment: const Alignment(-2.5, -1.8),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    color: CustomColors.purple.withOpacity(0.4),
                  ),
                ],
              ),
            ),
          ),

          /// #bottom right light
          Align(
            alignment: const Alignment(2.5, 1.8),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    color: CustomColors.purple.withOpacity(0.6),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
