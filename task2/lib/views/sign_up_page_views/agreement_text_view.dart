import 'package:flutter/material.dart';
import 'package:task2/services/constants/string_constants.dart';

import '../../services/constants/color_constants.dart';

class AgreementTextView extends StatelessWidget {
  const AgreementTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontFamily: 'DMSans',
          fontWeight: FontWeight.w400,
          fontSize: 12,
          letterSpacing: -0.2,
          color: ColorConstants.darkBlack,
        ),
        children: <TextSpan>[
          TextSpan(
            text: StringConstants.agreementFirstText,
          ),
          TextSpan(
            text: StringConstants.agreementSecondText,
            style: TextStyle(
              fontFamily: 'DMSans',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
