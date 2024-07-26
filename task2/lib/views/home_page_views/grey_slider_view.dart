import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class GreySliderView extends StatelessWidget {
  const GreySliderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 5,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: ColorConstants.darkGrey.withOpacity(0.2),
      ),
    );
  }
}
