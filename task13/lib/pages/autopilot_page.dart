import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/fonts.dart';
import 'package:task13/services/constants/images.dart';
import 'package:task13/services/constants/strings.dart';
import 'package:task13/views/header_text_view.dart';
import 'package:task13/views/primary_button_view.dart';
import 'package:task13/views/primary_configuration_text_view.dart';

class AutopilotPage extends StatefulWidget {
  final String totalPrice;
  final void Function() nextButtonOnPressed;
  final void Function() firstPriceOnPressed;
  final void Function() secondPriceOnPressed;

  const AutopilotPage({
    super.key,
    required this.totalPrice,
    required this.nextButtonOnPressed,
    required this.firstPriceOnPressed,
    required this.secondPriceOnPressed,
  });

  @override
  State<AutopilotPage> createState() => _AutopilotPageState();
}

class _AutopilotPageState extends State<AutopilotPage> with AutomaticKeepAliveClientMixin {
  List<bool> selectedItem = [true, false];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        /// #autopilot image
        Image(
          image: CustomImages.autopilotPage,
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
                    text: CustomStrings.autopilotPageHeaderText,
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
                      GestureDetector(
                        onTap: () {
                          selectedItem[0] = true;
                          selectedItem[1] = false;
                          widget.firstPriceOnPressed;
                          setState(() {});
                        },
                        child: PrimaryConfigurationTextView(
                          configurationText:
                              CustomStrings.autopilotPageFullSelfDrivingText,
                          configurationPriceText: CustomStrings
                              .autopilotPageFullSelfDrivingModelPrice,
                          isSelected: true,
                          totalPrice: widget.totalPrice,
                        ),
                      ),

                      /// #
                      GestureDetector(
                        onTap: () {
                          selectedItem[1] = true;
                          selectedItem[0] = false;
                          widget.secondPriceOnPressed;
                          setState(() {});
                        },
                        child: PrimaryConfigurationTextView(
                          configurationText:
                              CustomStrings.autopilotPageAutopilotText,
                          configurationPriceText:
                              CustomStrings.autopilotPageAutopilotModelPrice,
                          isSelected: false,
                          totalPrice: widget.totalPrice,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: y * 0.035),

                /// #
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: x * 0.09),
                  child: Text(
                    CustomStrings.autopilotPageDescription,
                    style: CustomFonts.descriptionTextStyle(),
                  ),
                ),
                SizedBox(height: y * 0.04),

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
