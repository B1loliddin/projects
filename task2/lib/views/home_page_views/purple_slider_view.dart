import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class PurpleSliderView extends StatelessWidget {
  const PurpleSliderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 5,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: ColorConstants.lightPurple,
      ),
    );
  }
}
