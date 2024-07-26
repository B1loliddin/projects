import 'package:flutter/material.dart';
import 'package:furniture_app/views/certain_pages_views/logo_image_view.dart';

class GreyDividerAndLogoView extends StatelessWidget {
  final GreyDividerView greyDivider;
  final LogoImageView logo;

  const GreyDividerAndLogoView({
    Key? key,
    required this.greyDivider,
    required this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // #grey divider
        greyDivider,

        // #logo
        logo,

        // #grey divider
        greyDivider
      ],
    );
  }
}

class GreyDividerView extends StatelessWidget {
  final Color dividerColor;

  const GreyDividerView({
    Key? key,
    required this.dividerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: dividerColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.3,
        height: 1,
      ),
    );
  }
}
