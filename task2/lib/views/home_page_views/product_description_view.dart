import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';
import '../../services/constants/string_constants.dart';

class ProductDescriptionView extends StatelessWidget {
  const ProductDescriptionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.productDescription,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: -0.4,
        color: ColorConstants.lightBlack.withOpacity(0.6),
      ),
    );
  }
}
