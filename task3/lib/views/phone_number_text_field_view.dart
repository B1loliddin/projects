import 'package:flutter/material.dart';
import 'package:task3/pages/sign_up_with_phone_number_page.dart';
import 'package:task3/services/constants/colors.dart';
import 'package:task3/services/constants/fonts.dart';
import 'package:task3/services/constants/icons.dart';
import 'package:task3/services/constants/strings.dart';

class PhoneNumberTextFieldView extends StatelessWidget {
  final bool isHaveSuffixIcon;

  const PhoneNumberTextFieldView({
    super.key,
    required this.isHaveSuffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    void onTap() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpWithPhoneNumberPage(),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 5),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// #america flag
                const Image(
                  image: CustomIcons.flagAmerica,
                  width: 40,
                ),
                const SizedBox(width: 10),

                /// #hint text
                Text(
                  CustomStrings
                      .connectWithSocialMediaPageTextFieldHintText,
                  style:
                  CustomFonts.phoneNumberTextFieldHintTextStyle(),
                ),
              ],
            ),
          ),
          suffixIcon: isHaveSuffixIcon
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: GestureDetector(
                    onTap: onTap,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.orange,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(12),
                        child: Image(
                          image: CustomIcons.arrowForward,
                        ),
                      ),
                    ),
                  ),
                )
              : null,
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: CustomColors.lightGrey),
          ),
        ),
      ),
    );
  }
}
