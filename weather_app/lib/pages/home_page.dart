import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/colors.dart';
import 'package:weather_app/services/constants/fonts.dart';
import 'package:weather_app/services/constants/images.dart';
import 'package:weather_app/services/constants/strings.dart';
import 'package:weather_app/views/certain_pages_views/custom_app_bar_view.dart';
import 'package:weather_app/views/certain_pages_views/footer_text_view.dart';
import 'package:weather_app/views/certain_pages_views/header_text_view.dart';
import 'package:weather_app/views/home_page_views/icon_biker_view.dart';
import 'package:weather_app/views/home_page_views/weather_image_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.whiteAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),

            // #custom app bar
            const CustomAppBarView(),
            const Spacer(),

            // #header text and biker icon
            Row(
              children: [
                // #
                const HeaderTextView(
                  text: CustomStrings.feelsLikeAGoodTime,
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.06,
                ),

                // #
                const IconBikerView(),
              ],
            ),
            const Spacer(flex: 2),

            // #round in the middle
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.38,
              decoration: const BoxDecoration(
                color: CustomColors.darkBlue,
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  // #
                  WeatherImageView(
                    alignment: const Alignment(-0.8, -0.9),
                    image: CustomImages.cloudyWeather,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),

                  // #
                  Align(
                    alignment: const Alignment(-0.3, -0.4),
                    child: Text(
                      CustomStrings.todayIsLike,
                      style: CustomFonts.todayIsLikeTextStyle(),
                    ),
                  ),

                  // #
                  Align(
                    alignment: const Alignment(-0.2, -0.2),
                    child: Text(
                      CustomStrings.twentyFiveCelsius,
                      style: CustomFonts.twentyFiveCelsiusTextStyle(),
                    ),
                  ),

                  WeatherImageView(
                    alignment: const Alignment(0.9, -0.9),
                    image: CustomImages.rainyWeather,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),

                  WeatherImageView(
                    alignment: const Alignment(-1, 0.5),
                    image: CustomImages.windyWeather,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),

                  WeatherImageView(
                    alignment: const Alignment(0.2, 0.3),
                    image: CustomImages.sunnyWeather,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),

                  WeatherImageView(
                    alignment: const Alignment(1.2, 0.4),
                    image: CustomImages.night,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),

                  WeatherImageView(
                    alignment: const Alignment(0, 1.2),
                    image: CustomImages.thunderstorm,
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                ],
              ),
            ),
            const Spacer(flex: 2),

            // #
            Row(
              children: [
                // #
                const FooterTextView(
                  firstFooterText: FirstFooterTextView(
                    text: CustomStrings.todayIsMood,
                  ),
                  secondFooterText: SecondFooterTextView(
                    text: CustomStrings.veryGood,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),

                // #
                const FooterTextView(
                  firstFooterText: FirstFooterTextView(
                    text: CustomStrings.tomorrowIsMood,
                  ),
                  secondFooterText: SecondFooterTextView(
                    text: CustomStrings.excellent,
                  ),
                ),
              ],
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
