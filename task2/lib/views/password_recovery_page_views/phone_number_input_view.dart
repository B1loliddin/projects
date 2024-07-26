import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../services/constants/color_constants.dart';
import '../../services/constants/string_constants.dart';

class PhoneNumberInputView extends StatefulWidget {
  const PhoneNumberInputView({Key? key}) : super(key: key);

  @override
  State<PhoneNumberInputView> createState() => _PhoneNumberInputViewState();
}

class _PhoneNumberInputViewState extends State<PhoneNumberInputView> {
  bool isCorrectPhoneNumber = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        if (value.isNotEmpty) {
          isCorrectPhoneNumber = true;
        } else {
          isCorrectPhoneNumber = false;
        }

        setState(() {});
      },
      keyboardType: TextInputType.number,
      style: const TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        letterSpacing: -0.2,
        color: ColorConstants.lightBlack,
      ),
      inputFormatters: [
        FilteringTextInputFormatter(RegExp(r'[0-9]'), allow: true),
      ],
      decoration: InputDecoration(
        errorText:
            isCorrectPhoneNumber ? null : StringConstants.phoneNumberErrorText,
        prefixIcon: const Padding(
          padding: EdgeInsets.only(right: 15),
          child: Icon(
            Icons.flag_outlined,
            size: 26,
            color: ColorConstants.lightBlack,
          ),
        ),
        hintText: StringConstants.startNumber,
        suffixIcon: isCorrectPhoneNumber
            ? const Icon(
                Icons.check_outlined,
                size: 20,
                color: ColorConstants.purple,
              )
            : null,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: ColorConstants.darkGrey.withOpacity(0.2),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: ColorConstants.purple,
          ),
        ),
      ),
    );
  }
}
