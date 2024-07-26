import 'package:flutter/material.dart';
import 'package:task13/services/constants/fonts.dart';
import 'package:task13/services/constants/strings.dart';

class RoadsterCarPage extends StatelessWidget {
  const RoadsterCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.025),

        /// #roadster center text
        Row(
          children: [
            /// #ledt text
            Text(
              'odel Y',
              style: CustomFonts.homePageSecondaryCarTextStyle(),
            ),
            const Spacer(flex: 2),

            /// #center text
            Text(
              CustomStrings.homePageRoadster,
              style: CustomFonts.homePagePrimaryCarTextStyle(),
            ),
            const Spacer(flex: 5),
          ],
        ),
      ],
    );
  }
}
