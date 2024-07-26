import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class HeaderTextView extends StatelessWidget {
  final String data;

  const HeaderTextView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w700,
        fontSize: 24,
        letterSpacing: -0.8,
        color: ColorConstants.lightBlack,
      ),
    );
  }
}
