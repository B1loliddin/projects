import 'package:flutter/material.dart';

import '../services/constants.dart';

class HeaderTextView extends StatelessWidget {
  const HeaderTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          StringConstants.headerText,
          style: TextStyle(
            fontFamily: 'Jost',
            fontWeight: FontWeight.w600,
            fontSize: 48,
            color: ColorConstants.black,
          ),
        ),
      ],
    );
  }
}
