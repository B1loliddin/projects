import 'package:flutter/material.dart';

import '../services/constants.dart';

class AppleLogoView extends StatelessWidget {
  const AppleLogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: 53,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(width: 1, color: ColorConstants.lightBlack),
      ),
      child: const Image(
        image: AssetImage(ImageConstants.appleImage),
        width: 27,
        height: 27,
      ),
    );
  }
}

class GoogleLogoView extends StatelessWidget {
  const GoogleLogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: 53,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(width: 1, color: ColorConstants.lightBlack),
      ),
      child: const Image(
        image: AssetImage(ImageConstants.googleImage),
        width: 27,
        height: 27,
      ),
    );
  }
}

class FacebookLogoView extends StatelessWidget {
  const FacebookLogoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: 53,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(width: 1, color: ColorConstants.lightBlack),
      ),
      child: const Image(
        image: AssetImage(ImageConstants.facebookImage),
        width: 27,
        height: 27,
      ),
    );
  }
}