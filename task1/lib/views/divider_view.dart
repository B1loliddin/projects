import 'package:flutter/material.dart';

import '../services/constants.dart';

class DividerView extends StatelessWidget {
  const DividerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColoredBox(
          color: ColorConstants.grey,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 1,
          ),
        ),
        const Text(
          StringConstants.orContinueWithText,
          style: TextStyle(
            fontFamily: 'Jost',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: ColorConstants.darkGrey,
          ),
        ),
        ColoredBox(
          color: ColorConstants.grey,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            height: 1,
          ),
        ),
      ],
    );
  }
}
