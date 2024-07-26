import 'package:flutter/material.dart';

import '../../services/constants/image_constants.dart';

class ChairImageView extends StatelessWidget {
  const ChairImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment(0, 0.5),
      child: Image(
        image: AssetImage(ImageConstants.chairImage),
      ),
    );
  }
}
