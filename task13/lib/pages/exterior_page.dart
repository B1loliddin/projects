import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/fonts.dart';
import 'package:task13/services/constants/images.dart';
import 'package:task13/services/constants/strings.dart';
import 'package:task13/views/color_of_car_view.dart';
import 'package:task13/views/header_text_view.dart';
import 'package:task13/views/primary_button_view.dart';
import 'package:task13/views/primary_configuration_text_view.dart';

class ExteriorPage extends StatefulWidget {
  final void Function() nextButtonOnPressed;
  final String totalPrice;

  const ExteriorPage({
    super.key,
    required this.nextButtonOnPressed,
    required this.totalPrice,
  });

  @override
  State<ExteriorPage> createState() => _ExteriorPageState();
}

class _ExteriorPageState extends State<ExteriorPage> with AutomaticKeepAliveClientMixin {
  List<bool> coloredBoxes = [false, false, false, true, false];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;

    return Column(
      children: [
        /// #top side
        Expanded(
          flex: 5,
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
                    text: CustomStrings.exteriorPageHeaderText,
                  ),
                ),

                /// #tesla model y image
                Image(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  image: coloredBoxes[0]
                      ? CustomImages.exteriorPageTeslaModelYBlack
                      : coloredBoxes[1]
                          ? CustomImages.exteriorPageTeslaModelYBlueGrey
                          : coloredBoxes[2]
                              ? CustomImages.exteriorPageTeslaModelYBlue
                              : coloredBoxes[3]
                                  ? CustomImages.exteriorPageTeslaModelYWhite
                                  : CustomImages.teslaModelYRed,
                  fit: BoxFit.fitWidth,
                ),

                /// #pearl (color) multi coat model
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: PrimaryConfigurationTextView(
                    configurationText: coloredBoxes[0]
                        ? 'Pearl Black Multi-Coat'
                        : coloredBoxes[1]
                            ? 'Pearl Blue Grey Multi-Coat'
                            : coloredBoxes[2]
                                ? 'Pearl Blue Multi-Coat'
                                : coloredBoxes[3]
                                    ? 'Pearl White Multi-Coat'
                                    : 'Pearl Red Multi-Coat',
                    configurationPriceText:
                        CustomStrings.exteriorPagePearlMultiCoatModelPrice,
                    isSelected: true,
                    totalPrice: widget.totalPrice,
                  ),
                ),

                SizedBox(height: y * 0.04),

                /// #colors of car
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// #black color
                      ColorOfCarView(
                        onTap: () {
                          for (int i = 0; i < coloredBoxes.length; i++) {
                            coloredBoxes[i] = false;
                          }
                          coloredBoxes[0] = true;

                          setState(() {});
                        },
                        isSelected: coloredBoxes[0],
                        color: CustomColors.black,
                        gradient: LinearGradient(
                          colors: [
                            CustomColors.white.withOpacity(0.4),
                            CustomColors.white.withOpacity(0.0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),

                      /// #blueGrey color
                      ColorOfCarView(
                        onTap: () {
                          for (int i = 0; i < coloredBoxes.length; i++) {
                            coloredBoxes[i] = false;
                          }
                          coloredBoxes[1] = true;

                          setState(() {});
                        },
                        isSelected: coloredBoxes[1],
                        color: CustomColors.secondBlueGrey,
                        gradient: LinearGradient(
                          colors: [
                            CustomColors.white.withOpacity(0.4),
                            CustomColors.black.withOpacity(0.4),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),

                      /// #blue color
                      ColorOfCarView(
                        onTap: () {
                          for (int i = 0; i < coloredBoxes.length; i++) {
                            coloredBoxes[i] = false;
                          }
                          coloredBoxes[2] = true;

                          setState(() {});
                        },
                        isSelected: coloredBoxes[2],
                        color: CustomColors.blue,
                      ),

                      /// #white color
                      ColorOfCarView(
                        onTap: () {
                          for (int i = 0; i < coloredBoxes.length; i++) {
                            coloredBoxes[i] = false;
                          }
                          coloredBoxes[3] = true;

                          setState(() {});
                        },
                        isSelected: coloredBoxes[3],
                        color: CustomColors.white,
                        gradient: LinearGradient(
                          colors: [
                            CustomColors.black.withOpacity(0.1),
                            CustomColors.black.withOpacity(0.0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),

                      /// #red color
                      ColorOfCarView(
                        onTap: () {
                          for (int i = 0; i < coloredBoxes.length; i++) {
                            coloredBoxes[i] = false;
                          }
                          coloredBoxes[4] = true;

                          setState(() {});
                        },
                        isSelected: coloredBoxes[4],
                        color: CustomColors.red,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: y * 0.04),

                /// #divider
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: const Divider(color: CustomColors.secondWhiteGrey),
                ),
                SizedBox(height: y * 0.02),

                /// #
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: Text(
                    CustomStrings.exteriorPagePerformanceWheelsText,
                    style:
                        CustomFonts.exteriorPageSecondaryInformationTextStyle(),
                  ),
                ),
                const SizedBox(height: 16),

                /// #
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: Text(
                    CustomStrings.exteriorPageCarbonFiberSpoilerText,
                    style:
                        CustomFonts.exteriorPageSecondaryInformationTextStyle(),
                  ),
                ),
              ],
            ),
          ),
        ),

        /// #
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: CustomColors.white,
            ),
            child: Row(
              children: [
                const Spacer(flex: 2),

                /// #total price text
                Text(
                  widget.totalPrice,
                  style:
                      CustomFonts.totalPriceTextStyle(28, CustomColors.black),
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
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
