import 'package:flutter/material.dart';
import 'package:task3/pages/connect_with_social_media_page.dart';
import 'package:task3/pages/log_in_page.dart';
import 'package:task3/services/constants/colors.dart';
import 'package:task3/services/constants/fonts.dart';
import 'package:task3/services/constants/images.dart';
import 'package:task3/services/constants/strings.dart';
import 'package:task3/views/primary_button_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;

    void getStartedButtonFunction() {
      // Navigator.pushReplacementNamed(context, 'connect_with_social_media_page');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ConnectWithSocialMediaPage(),
        ),
      );
    }

    void goToLogInPage() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInPage(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: CustomColors.lightGreen,
      body: SizedBox(
        width: x,
        height: y,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                SizedBox(height: y * 0.15),

                /// #delivery on bike
                Image(
                  image: CustomImages.deliveryOnBike,
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                const SizedBox(height: 20),

                /// #header text
                Text(
                  CustomStrings.homePageHeaderText,
                  textAlign: TextAlign.center,
                  style: CustomFonts.headerTextStyle(FontWeight.w600, 31, -1),
                ),
                const SizedBox(height: 15),

                /// #header sub text
                Text(
                  CustomStrings.homePageHeaderSubText,
                  style: CustomFonts.headerSubTextStyle(FontWeight.w600, 18,
                      CustomColors.lightBlack.withOpacity(0.7)),
                ),
                SizedBox(height: y * 0.09),

                /// #get started button
                PrimaryButtonView(
                  backgroundButtonColor: CustomColors.orange,
                  onPressed: getStartedButtonFunction,
                  text: CustomStrings.getStartedButtonText,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(height: 20),

                /// #log in button
                PrimaryButtonView(
                  backgroundButtonColor: CustomColors.green,
                  onPressed: goToLogInPage,
                  text: CustomStrings.logInButtonText,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
