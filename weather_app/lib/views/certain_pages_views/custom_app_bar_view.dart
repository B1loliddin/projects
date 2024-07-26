import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/fonts.dart';
import 'package:weather_app/services/constants/icons.dart';
import 'package:weather_app/services/constants/images.dart';
import 'package:weather_app/services/constants/strings.dart';

class CustomAppBarView extends StatelessWidget {
  const CustomAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            // user image
            UserImageView(),
            SizedBox(width: 20),

            // top, down text and arrow down
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // #top text
                TopTextView(),
                SizedBox(height: 6),

                // #bottom text and arrow
                Row(
                  children: [
                    // #
                    BottomTextView(),

                    // #
                    IconArrowDownView(),
                  ],
                ),
              ],
            ),
          ],
        ),

        // #menu icon
        MenuIconView(),
      ],
    );
  }
}

class MenuIconView extends StatelessWidget {
  const MenuIconView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: CustomIcons.menu,
      width: 35,
    );
  }
}

class IconArrowDownView extends StatelessWidget {
  const IconArrowDownView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.keyboard_arrow_down_outlined,
    );
  }
}

class BottomTextView extends StatelessWidget {
  const BottomTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      CustomStrings.newYorkUSA,
      style: CustomFonts.appBarTextStyle(),
    );
  }
}

class TopTextView extends StatelessWidget {
  const TopTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      CustomStrings.britneyGlayers,
      style: CustomFonts.appBarTextStyle(),
    );
  }
}

class UserImageView extends StatelessWidget {
  const UserImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: CustomImages.user,
      width: 45,
    );
  }
}
