import 'package:flutter/material.dart';

import '../services/constants.dart';

class ForgotThePasswordTextView extends StatelessWidget {
  const ForgotThePasswordTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringConstants.forgotThePasswordText,
      style: TextStyle(
        fontFamily: 'Jost',
        fontWeight: FontWeight.w600,
        fontSize: 16,
        color: ColorConstants.purple,
      ),
    );
  }
}
