import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/colors.dart';
import 'package:weather_app/services/constants/strings.dart';
import 'package:weather_app/views/certain_pages_views/primary_button_view.dart';
import 'package:weather_app/views/introduction_page_views/middle_text_view.dart';
import 'package:weather_app/views/introduction_page_views/top_right_star_view.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.whiteAccent,
      body: Column(
        children: [
          // #top right star
          const TopRightStarView(),
          const Spacer(flex: 5),

          // #middle text
          const MiddleTextView(),
          const Spacer(flex: 4),

          // #let us check button
          PrimaryButtonView(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.06,
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/main_page');
            },
            buttonText: const ButtonTextView(text: CustomStrings.letUsCheck),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
