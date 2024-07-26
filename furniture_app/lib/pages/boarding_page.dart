import 'package:flutter/material.dart';
import 'package:furniture_app/services/constants/fonts.dart';
import 'package:furniture_app/services/constants/images.dart';
import 'package:furniture_app/services/constants/strings.dart';
import 'package:furniture_app/views/boarding_page_views/description_text_view.dart';
import 'package:furniture_app/views/boarding_page_views/get_started_button_view.dart';
import 'package:furniture_app/views/boarding_page_views/home_beautiful_text_view.dart';
import 'package:furniture_app/views/boarding_page_views/make_your_text_view.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: CustomImages.backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 5),

                // #make your text
                MakeYourTextView(
                  text: CustomStrings.makeYourText,
                  style: CustomFonts.makeYourTextTextStyle(),
                ),

                const SizedBox(height: 15),

                // #home beautiful text
                HomeBeautifulTextView(
                  text: CustomStrings.homeBeautifulText,
                  style: CustomFonts.homeBeautifulTextTextStyle(),
                ),

                const Spacer(),

                // #description of page
                DescriptionTextView(
                  text: CustomStrings.boardingPageDescription,
                  style: CustomFonts.boardingPageDescriptionTextStyle(),
                ),

                const Spacer(flex: 4),

                // #get started button
                GetStartedButtonView(
                  text: CustomStrings.gertStartedButtonText,
                  buttonStyle: CustomFonts.getStartedButtonStyle(),
                  textStyle: CustomFonts.getStartedButtonTextTextStyle(),
                ),

                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
