import 'package:flutter/material.dart';
import 'package:task13/pages/model_x_car_page.dart';
import 'package:task13/pages/model_y_car_page.dart';
import 'package:task13/pages/roadster_car_page.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/fonts.dart';
import 'package:task13/services/constants/icons.dart';
import 'package:task13/services/constants/strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    final y = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: CustomColors.black,
      appBar: AppBar(
        centerTitle: true,
        forceMaterialTransparency: true,
        title: Image(
          image: CustomIcons.logo,
          width: MediaQuery.of(context).size.width * 0.25,
          color: CustomColors.white.withOpacity(0.4),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: y * 0.05),

          /// #header text
          Center(
            child: Text(
              CustomStrings.homePageTesla,
              style: CustomFonts.homePageHeaderTextStyle(),
            ),
          ),

          /// #cars
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                /// #model x car page
                ModelXCarPage(),

                /// #model y car page
                ModelYCarPage(),

                /// #roadster car page
                RoadsterCarPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
