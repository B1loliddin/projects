import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class FooterTextView<T> extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String routeName;

  const FooterTextView({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacementNamed(context, routeName);
      },
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontFamily: 'DMSans',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: ColorConstants.lightBlack.withOpacity(0.8),
          ),
          children: <TextSpan>[
            TextSpan(text: firstText),
            TextSpan(
              text: secondText,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: ColorConstants.darkBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
