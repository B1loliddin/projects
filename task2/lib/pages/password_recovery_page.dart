import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../services/constants/color_constants.dart';
import '../services/constants/string_constants.dart';
import '../views/certain_pages_views/continue_button_view.dart';
import '../views/certain_pages_views/header_lower_view.dart';
import '../views/certain_pages_views/header_text_view.dart';
import '../views/certain_pages_views/label_text_view.dart';
import '../views/password_recovery_page_views/phone_number_input_view.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            HeaderTextView(data: StringConstants.passwordRecoveryText),

            SizedBox(height: 8),

            // #enter your phone number text
            HeaderLowerView(
              data: StringConstants.enterYourPhoneNumberText,
            ),

            Spacer(),

            // #label phone number text
            LabelTextView(data: StringConstants.phoneNumberText),

            // #input phone number
            PhoneNumberInputView(),

            Spacer(flex: 2),

            // #continue button
            ContinueButtonView(routeName: '/authentication_page'),

            Spacer(flex: 9),
          ],
        ),
      ),
    );
  }
}
