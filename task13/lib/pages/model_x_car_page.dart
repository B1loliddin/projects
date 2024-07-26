import 'package:flutter/material.dart';
import 'package:task13/services/constants/fonts.dart';
import 'package:task13/services/constants/strings.dart';

class ModelXCarPage extends StatelessWidget {
  const ModelXCarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.025),

        /// #model x center text
        Row(
          children: [
            const Spacer(flex: 5),

            /// #
            Text(
              CustomStrings.homePageModelX,
              style: CustomFonts.homePagePrimaryCarTextStyle(),
            ),
            const Spacer(flex: 2),

            /// #
            Text(
              'Mode',
              style: CustomFonts.homePageSecondaryCarTextStyle(),
            ),
          ],
        ),
      ],
    );
  }
}
