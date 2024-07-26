import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class InputCodeView extends StatelessWidget {
  const InputCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget counter(
      BuildContext context, {
      required int currentLength,
      required int? maxLength,
      required bool isFocused,
    }) {
      return const Text('');
    }

    return Flexible(
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        buildCounter: counter,
        style: const TextStyle(
          fontFamily: 'DMSans',
          fontWeight: FontWeight.w700,
          fontSize: 24,
          letterSpacing: -0.77,
          color: ColorConstants.lightBlack,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(bottom: 20),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: ColorConstants.darkGrey.withOpacity(0.2),
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: ColorConstants.lightBlack.withOpacity(0.2),
            ),
          ),
        ),
      ),
    );
  }
}
