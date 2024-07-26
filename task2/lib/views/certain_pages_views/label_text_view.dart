import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class LabelTextView extends StatelessWidget {
  final String data;

  const LabelTextView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w500,
        fontSize: 13,
        letterSpacing: -0.17,
        color: ColorConstants.darkGrey,
      ),
    );
  }
}
