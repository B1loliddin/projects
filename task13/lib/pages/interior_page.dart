import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/fonts.dart';
import 'package:task13/services/constants/images.dart';
import 'package:task13/services/constants/strings.dart';
import 'package:task13/views/color_of_car_view.dart';
import 'package:task13/views/header_text_view.dart';
import 'package:task13/views/primary_button_view.dart';
import 'package:task13/views/primary_configuration_text_view.dart';

class InteriorPage extends StatefulWidget {
  final String totalPrice;
  final void Function() nextButtonOnPressed;

  const InteriorPage({
    super.key,
    required this.totalPrice,
    required this.nextButtonOnPressed,
  });

  @override
  State<InteriorPage> createState() => _InteriorPageState();
}

class _InteriorPageState extends State<InteriorPage>
    with AutomaticKeepAliveClientMixin {
  List<bool> selectedColor = [true, false];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        /// interior image
        Image(
          image: CustomImages.interiorPageTeslaModelYInterior,
          width: x,
          height: y * 0.5,
          fit: BoxFit.cover,
        ),

        /// #bottom sheet
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: x,
            height: y * 0.4,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              color: CustomColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: y * 0.045),

                /// #header text
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: const HeaderTextView(
                    text: CustomStrings.interiorPageHeaderText,
                  ),
                ),
                SizedBox(height: y * 0.035),

                /// #model
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// #black and white and price
                      PrimaryConfigurationTextView(
                        configurationText:
                            CustomStrings.interiorPageBlackAndWhiteText,
                        configurationPriceText:
                            CustomStrings.interiorPageBlackAndWhiteModelPrice,
                        isSelected: true,
                        totalPrice: widget.totalPrice,
                      ),

                      /// #
                      PrimaryConfigurationTextView(
                        configurationText:
                            CustomStrings.interiorPageAllBlackText,
                        configurationPriceText:
                            CustomStrings.interiorPageAllBlackModelPrice,
                        isSelected: false,
                        totalPrice: widget.totalPrice,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: y * 0.035),

                /// #colors
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: Row(
                    children: [
                      ColorOfCarView(
                        onTap: () {
                          selectedColor[0] = true;
                          selectedColor[1] = false;
                          setState(() {});
                        },
                        isSelected: selectedColor[0],
                        color: CustomColors.white,
                      ),
                      const SizedBox(width: 20),
                      ColorOfCarView(
                        onTap: () {
                          selectedColor[1] = true;
                          selectedColor[0] = false;
                          setState(() {});
                        },
                        isSelected: selectedColor[1],
                        color: CustomColors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: y * 0.03),

                /// #
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
