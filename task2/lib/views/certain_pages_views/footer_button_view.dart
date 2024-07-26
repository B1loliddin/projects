import 'package:flutter/material.dart';
import 'package:task2/services/constants/string_constants.dart';

import '../../services/constants/color_constants.dart';
import '../../services/constants/image_constants.dart';

class FooterButtonView extends StatelessWidget {
  const FooterButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        child: SizedBox(
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, '/password_recovery_page');
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: ColorConstants.blue,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // #
                Image(
                  image: AssetImage(ImageConstants.facebookIcon),
                  width: 18,
                ),

                SizedBox(width: 6),

                // #
                Text(
                  StringConstants.connectWithFacebookText,
                  style: TextStyle(
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    letterSpacing: -0.8,
                    color: ColorConstants.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
