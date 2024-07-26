import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';
import '../../services/constants/string_constants.dart';

class WelcomeTextView extends StatelessWidget {
  const WelcomeTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringConstants.welcomeText,
      style: TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w700,
        fontSize: 24,
        letterSpacing: -0.8,
        color: ColorConstants.lightBlack,
      ),
    );
  }
}
