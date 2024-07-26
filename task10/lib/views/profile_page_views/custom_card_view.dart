import 'package:flutter/material.dart';
import 'package:task10/services/constants/colors.dart';
import 'package:task10/services/constants/fonts.dart';
import 'package:task10/services/constants/icons.dart';
import 'package:task10/services/constants/strings.dart';

class CustomCardView extends StatelessWidget {
  final AssetImage image;
  final String firstText;
  final String secondText;

  const CustomCardView({
    super.key,
    required this.image,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            color: CustomColors.darkBlue.withOpacity(0.1),
            blurRadius: 20,
          ),
        ],
      ),
      child: Row(
        children: [
          // #
          Image(image: image),

          // #
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // #
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      firstText,
                      style: CustomFonts.cardTextStyle(),
                    ),

                    // #
                    Text(
                      secondText,
                      style: CustomFonts.cardDescriptionStyle(),
                    ),
                  ],
                ),

                // #
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // #
                    Row(
                      children: [
                        // #
                        Image(
                          image: CustomIcons.thumb,
                          width: 20,
                        ),
                        SizedBox(width: 6),

                        // #
                        Text(CustomStrings.firstCardThumbsNumber),
                      ],
                    ),
                    SizedBox(width: 15),

                    // #
                    Row(
                      children: [
                        // #
                        Image(
                          image: CustomIcons.clock,
                          width: 20,
                        ),
                        SizedBox(width: 6),

                        // #
                        Text(CustomStrings.firstCardTime),
                      ],
                    ),
                    SizedBox(width: 20),

                    Image(
                      image: CustomIcons.favourite,
                      width: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
