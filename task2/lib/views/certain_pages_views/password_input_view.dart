import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class PasswordInputView extends StatefulWidget {
  final String errorText;

  const PasswordInputView({
    Key? key,
    required this.errorText,
  }) : super(key: key);

  @override
  State<PasswordInputView> createState() => _PasswordInputViewState();
}

class _PasswordInputViewState extends State<PasswordInputView> {
  bool isCorrectPassword = false;
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isVisible,
      onSubmitted: (value) {
        if (value == 'manishprajapati') {
          isCorrectPassword = true;
        } else {
          isCorrectPassword = false;
        }

        setState(() {});
      },
      style: const TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        letterSpacing: -0.2,
        color: ColorConstants.lightBlack,
      ),
      decoration: InputDecoration(
        errorText: isCorrectPassword ? null : widget.errorText,
        prefixIcon: const Padding(
          padding: EdgeInsets.only(right: 15),
          child: Icon(
            Icons.lock_outline,
            size: 26,
            color: ColorConstants.lightBlack,
          ),
        ),
        suffixIcon: isVisible
            ? IconButton(
                onPressed: () {
                  isVisible = false;
                  setState(() {});
                },
                splashRadius: 1,
                iconSize: 26,
                color: ColorConstants.darkBlack,
                icon: const Icon(Icons.visibility_outlined),
              )
            : IconButton(
                onPressed: () {
                  isVisible = true;
                  setState(() {});
                },
                splashRadius: 1,
                iconSize: 26,
                color: ColorConstants.darkBlack,
                icon: const Icon(Icons.visibility_off_outlined),
              ),
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
