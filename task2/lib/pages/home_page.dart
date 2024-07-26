import 'package:flutter/material.dart';

import '../views/home_page_views/big_right_circle_view.dart';
import '../views/home_page_views/chair_image_view.dart';
import '../views/home_page_views/get_started_button_view.dart';
import '../views/home_page_views/grey_slider_view.dart';
import '../views/home_page_views/product_description_view.dart';
import '../views/home_page_views/purple_slider_view.dart';
import '../views/home_page_views/small_left_circle_view.dart';
import '../views/home_page_views/welcome_text_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // #main image
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                // #big right circle
                BigRightCircleView(),

                // #small left circle
                SmallLeftCircleView(),

                // #centered chair image
                ChairImageView(),

                Align(
                  alignment: Alignment(0, 0.87),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // #left grey slider
                      GreySliderView(),

                      SizedBox(width: 8),

                      // #center purple slider
                      PurpleSliderView(),

                      SizedBox(width: 8),

                      // #right grey slider
                      GreySliderView(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // #footer texts
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Spacer(),

                  // #
                  WelcomeTextView(),

                  SizedBox(height: 16),

                  // #
                  ProductDescriptionView(),

                  Spacer(flex: 2),

                  // #
                  GetStartedButtonView(),

                  Spacer(flex: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
