import 'package:flutter/material.dart';

import '../../services/constants/color_constants.dart';

class UsernameOrEmailInputView extends StatefulWidget {
  final IconData icon;
  final String errorText;

  const UsernameOrEmailInputView({
    Key? key,
    required this.icon,
    required this.errorText,
  }) : super(key: key);

  @override
  State<UsernameOrEmailInputView> createState() =>
      _UsernameOrEmailInputViewState();
}

class _UsernameOrEmailInputViewState extends State<UsernameOrEmailInputView> {
  bool isCorrectUsernameOrEmail = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        if (value == 'manishprajapati') {
          isCorrectUsernameOrEmail = true;
        } else {
          isCorrectUsernameOrEmail = false;
        }

        setState(() {});
      },
      textInputAction: TextInputAction.next,
      style: const TextStyle(
        fontFamily: 'DMSans',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        letterSpacing: -0.2,
        color: ColorConstants.lightBlack,
      ),
      decoration: InputDecoration(
        errorText: isCorrectUsernameOrEmail ? null : widget.errorText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(
            widget.icon,
            size: 26,
            color: ColorConstants.lightBlack,
          ),
        ),
        suffixIcon: isCorrectUsernameOrEmail
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
