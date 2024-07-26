import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/colors.dart';
import 'package:weather_app/services/constants/icons.dart';
import 'package:weather_app/services/constants/strings.dart';
import 'package:weather_app/views/settings_page_views/measurement_view.dart';
import 'package:weather_app/views/settings_page_views/secondary_text_view.dart';
import 'package:weather_app/views/settings_page_views/text_and_icon_view.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),

            // #custom app bar
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // #
                Icon(Icons.arrow_back_ios_new),

                // #
                Image(
                  image: CustomIcons.menu,
                  width: 35,
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),

            // #
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.065,
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // #general settings
                    const SecondaryTextView(
                      text: CustomStrings.generalSettings,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),

                    // #account
                    const TextAndIconView(
                      icon: IconView(icon: CustomIcons.person),
                      text: TextView(text: CustomStrings.account),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),

                    // #location
                    TextAndIconView(
                      icon: Transform.scale(
                        scale: 0.5,
                        child: const IconView(icon: CustomIcons.blueLocation),
                      ),
                      text: const TextView(text: CustomStrings.location),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.005,
                    ),

                    // #notifications
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // #
                        TextAndIconView(
                          icon: IconView(icon: CustomIcons.notificationOn),
                          text: TextView(text: CustomStrings.notifications),
                        ),

                        // #
                        Image(
                          image: CustomIcons.notificationOff,
                          width: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),

                    // #temperature
                    const SecondaryTextView(text: CustomStrings.temperature),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),

                    // #celcius
                    const MeasurementView(
                      text: TextView(text: CustomStrings.celsius),
                      color: CustomColors.lightGrey,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),

                    // #fahrenheit
                    const MeasurementView(
                      text: TextView(text: CustomStrings.fahrenheit),
                      color: CustomColors.green,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),

                    // #terms and services
                    TextAndIconView(
                      icon: Transform.scale(
                        scale: 0.45,
                        child: const IconView(icon: CustomIcons.check),
                      ),
                      text:
                          const TextView(text: CustomStrings.termsAndServices),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.008,
                    ),

                    // #about
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/error_page');
                      },
                      child: TextAndIconView(
                        icon: Transform.scale(
                          scale: 0.55,
                          child: const IconView(icon: CustomIcons.info),
                        ),
                        text: const TextView(text: CustomStrings.about),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),

                    // #report
                    TextAndIconView(
                      icon: Transform.scale(
                        scale: 0.55,
                        child: const IconView(icon: CustomIcons.bug),
                      ),
                      text: const TextView(text: CustomStrings.report),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
