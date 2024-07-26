import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/fonts.dart';
import 'package:task13/services/constants/images.dart';
import 'package:task13/services/constants/strings.dart';
import 'package:task13/views/brief_information_about_car_view.dart';
import 'package:task13/views/header_text_view.dart';
import 'package:task13/views/primary_button_view.dart';
import 'package:task13/views/primary_configuration_text_view.dart';

class CarPage extends StatefulWidget {
  final void Function() nextButtonOnPressed;
  final void Function() firstPriceOnPressed;
  final void Function() secondPriceOnPressed;
  final String totalPrice;

  const CarPage({
    super.key,
    required this.nextButtonOnPressed,
    required this.firstPriceOnPressed,
    required this.secondPriceOnPressed,
    required this.totalPrice,
  });

  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> with AutomaticKeepAliveClientMixin {
  bool firstSelectedItem = true;
  bool secondSelectedItem = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;

    return Column(
      children: [
        /// #top side
        Expanded(
          flex: 8,
          child: SizedBox(
            width: x,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: y * 0.04),

                /// #header text
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: const HeaderTextView(
                    text: CustomStrings.carPageHeaderText,
                  ),
                ),

                /// #tesla model y image
                const Image(
                  image: CustomImages.teslaModelYRed,
                ),

                /// #performance, price and long range, price
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// #performance and price
                      GestureDetector(
                        onTap: () {
                          firstSelectedItem = true;
                          secondSelectedItem = false;
                          widget.firstPriceOnPressed();
                          setState(() {});
                        },
                        child: PrimaryConfigurationTextView(
                          configurationText:
                              CustomStrings.carPagePerformanceText,
                          configurationPriceText:
                              CustomStrings.carPagePerformanceModelPrice,
                          isSelected: firstSelectedItem,
                          totalPrice: widget.totalPrice,
                        ),
                      ),

                      /// #long range and price
                      GestureDetector(
                        onTap: () {
                          secondSelectedItem = true;
                          firstSelectedItem = false;
                          widget.secondPriceOnPressed();
                          setState(() {});
                        },
                        child: PrimaryConfigurationTextView(
                          configurationText:
                              CustomStrings.carPageLongRangeModelText,
                          configurationPriceText:
                              CustomStrings.carPageLongRangeModelPrice,
                          isSelected: secondSelectedItem,
                          totalPrice: widget.totalPrice,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        /// #bottom white container
        Expanded(
          flex: 6,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: CustomColors.white,
            ),
            child: Column(
              children: [
                SizedBox(height: y * 0.04),

                /// #characteristics
                Row(
                  children: [
                    const Spacer(),

                    /// #300 mi and range text
                    const BriefInformationAboutCar(
                      primaryText:
                          CustomStrings.carPageModelYThreePointFiveSeconds,
                      secondaryText:
                          CustomStrings.carPageModelYFromZeroToSixtyMPH,
                      primaryTextColor: CustomColors.black,
                      secondaryTextColor: CustomColors.black,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.12),

                    /// #divider
                    ColoredBox(
                      color: CustomColors.black.withOpacity(0.3),
                      child: const SizedBox(
                        height: 57,
                        width: 1,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.08),

                    /// #awd text and dual motor text
                    const BriefInformationAboutCar(
                      primaryText: CustomStrings.carPageModelYFiveHundred,
                      secondaryText: CustomStrings.carPageModelYTopSpeed,
                      primaryTextColor: CustomColors.black,
                      secondaryTextColor: CustomColors.black,
                    ),

                    const Spacer(),
                  ],
                ),
                SizedBox(height: y * 0.025),

                /// #description
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: Text(
                    CustomStrings.carPageTeslaModelYDescription,
                    style: CustomFonts.descriptionTextStyle(),
                  ),
                ),
                SizedBox(height: y * 0.025),

                /// #total price text and next button
                Row(
                  children: [
                    const Spacer(flex: 2),

                    /// #total price text
                    Text(
                      widget.totalPrice,
                      style: CustomFonts.totalPriceTextStyle(
                          28, CustomColors.black),
                    ),
                    const Spacer(),

                    /// #next button
                    PrimaryButtonView(
                      onPressed: widget.nextButtonOnPressed,
                      width: x * 0.4,
                      buttonText: CustomStrings.carPageNextButtonText,
                      textColor: CustomColors.black,
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
