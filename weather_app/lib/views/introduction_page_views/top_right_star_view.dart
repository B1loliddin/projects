import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/images.dart';

class TopRightStarView extends StatelessWidget {
  const TopRightStarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Image(
          image: CustomImages.decorationStar,
          width: MediaQuery.of(context).size.width * 0.35,
        ),
      ],
    );
  }
}
