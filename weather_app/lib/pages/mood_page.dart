import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/strings.dart';
import 'package:weather_app/views/certain_pages_views/custom_app_bar_view.dart';
import 'package:weather_app/views/certain_pages_views/footer_text_view.dart';
import 'package:weather_app/views/certain_pages_views/header_text_view.dart';
import 'package:weather_app/views/mood_page_views/middle_container_view.dart';

class MoodPage extends StatelessWidget {
  const MoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),

            // #custom app bar
            const CustomAppBarView(),

            const Spacer(flex: 2),

            // #
            const HeaderTextView(
              text: CustomStrings.howYouFeelToday,
            ),

            const Spacer(),

            Row(
              children: [
                // #
                MiddleContainerView(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.1,
                  text: CustomStrings.veryGoodWithEmoticon,
                  isFilled: true,
                ),

                const SizedBox(width: 20),

                // #
                MiddleContainerView(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.1,
                  text: CustomStrings.ok,
                  isFilled: false,
                ),
              ],
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                MiddleContainerView(
                  width: MediaQuery.of(context).size.width * 0.38,
                  height: MediaQuery.of(context).size.height * 0.1,
                  text: CustomStrings.veryBad,
                  isFilled: false,
                ),

                const SizedBox(width: 18),

                // #
                MiddleContainerView(
                  width: MediaQuery.of(context).size.width * 0.32,
                  height: MediaQuery.of(context).size.height * 0.1,
                  text: CustomStrings.angry,
                  isFilled: false,
                ),
              ],
            ),
            const SizedBox(height: 20),

            // #
            MiddleContainerView(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.1,
              text: CustomStrings.justSad,
              isFilled: false,
            ),
            const SizedBox(height: 20),

            // #
            MiddleContainerView(
              width: MediaQuery.of(context).size.width * 0.55,
              height: MediaQuery.of(context).size.height * 0.1,
              text: CustomStrings.veryHappy,
              isFilled: false,
            ),

            const Spacer(flex: 3),

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
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
