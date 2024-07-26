import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class HeaderLowerView extends StatelessWidget {
  final String data;

  const HeaderLowerView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w500,
        fontSize: 15,
        letterSpacing: -0.4,
        color: ColorConstants.lightBlack.withOpacity(0.6),
      ),
    );
  }
}
