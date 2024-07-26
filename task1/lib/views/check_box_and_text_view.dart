import 'package:flutter/material.dart';

import '../services/constants.dart';

class CheckBoxAndTextView extends StatefulWidget {
  const CheckBoxAndTextView({Key? key}) : super(key: key);

  @override
  State<CheckBoxAndTextView> createState() => _CheckBoxAndTextViewState();
}

class _CheckBoxAndTextViewState extends State<CheckBoxAndTextView> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: isChecked,
          splashRadius: 0,
          activeColor: ColorConstants.purple,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          onChanged: (value) {
            isChecked = value!;
            setState(() {});
          },
        ),
        const Text(
          StringConstants.rememberMeText,
          style: TextStyle(
            fontFamily: 'Jost',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: ColorConstants.purple,
          ),
        ),
      ],
    );
  }
}
