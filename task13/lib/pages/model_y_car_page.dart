import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/fonts.dart';
import 'package:task13/services/constants/images.dart';
import 'package:task13/services/constants/strings.dart';
import 'package:task13/views/brief_information_about_car_view.dart';
import 'package:task13/views/home_page_footer_text_view.dart';
import 'package:task13/views/primary_button_view.dart';

class ModelYCarPage extends StatelessWidget {
  const ModelYCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    void goToMainPage() {
      Navigator.pushNamed(context, '/main_page');
    }

    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.025),

        /// #model y center text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// #left text
            Text(
              'del X',
              style: CustomFonts.homePageSecondaryCarTextStyle(),
            ),

            /// #center text
            Text(
              CustomStrings.homePageModelY,
              style: CustomFonts.homePagePrimaryCarTextStyle(),
            ),

            /// #right text
            Text(
              'Roa',
              style: CustomFonts.homePageSecondaryCarTextStyle(),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),

        /// #image model y
        const Image(
          image: CustomImages.homePageTeslaModelY,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.025),

        /// #primary and secondary informations
        Row(
          children: [
            const Spacer(),

            /// #300 mi and range text
            const BriefInformationAboutCar(
              primaryText: CustomStrings.homePage300mi,
              secondaryText: CustomStrings.homePageRange,
              primaryTextColor: CustomColors.white,
              secondaryTextColor: CustomColors.white,
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.08),

            /// #divider
            ColoredBox(
              color: CustomColors.white.withOpacity(0.3),
              child: const SizedBox(
                height: 57,
                width: 1,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.08),

            /// #awd text and dual motor text
            const BriefInformationAboutCar(
              primaryText: CustomStrings.homePageAWD,
              secondaryText: CustomStrings.homePageDualMotor,
              primaryTextColor: CustomColors.white,
              secondaryTextColor: CustomColors.white,
            ),

            const Spacer(),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.07),

        /// #acceleration text
        const HomePageFooterTextView(
          firstText: CustomStrings.homePageFirstAccelerationText,
          secondText: CustomStrings.homePageSecondAccelerationText,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.025),

        /// #top speed text
        const HomePageFooterTextView(
          firstText: CustomStrings.homePageFirstTopSpeedText,
          secondText: CustomStrings.homePageSecondTopSpeedText,
        ),
        const Spacer(flex: 2),

        /// #order now button
        PrimaryButtonView(
          onPressed: goToMainPage,
          width: MediaQuery.of(context).size.width * 0.65,
          buttonText: CustomStrings.homePageOrderNowButtonText,
          textColor: CustomColors.white,
        ),
        const Spacer(),
      ],
    );
  }
}
