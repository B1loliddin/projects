import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/constants/color_constants.dart';
import '../services/constants/string_constants.dart';
import '../views/authentication_page_views/input_code_view.dart';
import '../views/certain_pages_views/continue_button_view.dart';
import '../views/certain_pages_views/header_lower_view.dart';
import '../views/certain_pages_views/header_text_view.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.only(left: 38),
          child: Icon(
            Icons.location_on_outlined,
            color: ColorConstants.darkBlack,
          ),
        ),
        title: const Text(
          'Ahmedabad, Gujarat',
          style: TextStyle(
            fontFamily: 'DMSans',
            fontWeight: FontWeight.w700,
            fontSize: 14,
            letterSpacing: -0.2,
            color: ColorConstants.lightBlack,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),

            // #header text
            HeaderTextView(data: StringConstants.otpAuthenticationText),

            SizedBox(height: 8),

            // #enter your phone number text
            HeaderLowerView(
              data: StringConstants.anAuthenticationCodeText,
            ),

            Spacer(),

            Row(
              children: [
                // #
                InputCodeView(),

                SizedBox(width: 15),

                // #
                InputCodeView(),

                SizedBox(width: 15),

                // #
                InputCodeView(),

                SizedBox(width: 15),

                // #
                InputCodeView(),
              ],
            ),

            Spacer(),

            // #continue button
            ContinueButtonView(routeName: '/content_page'),

            Spacer(flex: 8),
          ],
        ),
      ),
    );
  }
}
