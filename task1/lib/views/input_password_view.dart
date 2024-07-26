import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../services/constants.dart';

class InputPasswordView extends StatefulWidget {
  const InputPasswordView({Key? key}) : super(key: key);

  @override
  State<InputPasswordView> createState() => _InputPasswordViewState();
}

class _InputPasswordViewState extends State<InputPasswordView> {
  bool isVisible = true;
  bool isEmptyPasswordInput = true;

  void checkPasswordInput(String value) {
    if (value.isEmpty) {
      setState(() {
        isEmptyPasswordInput = true;
      });
    } else {
      setState(() {
        isEmptyPasswordInput = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !isVisible,
      obscuringCharacter: StringConstants.obscuringCharacter,
      onChanged: checkPasswordInput,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstants.lightGrey,
        prefixIcon: Icon(
          CupertinoIcons.lock_fill,
          size: 20,
          color: isEmptyPasswordInput
              ? ColorConstants.darkGrey
              : ColorConstants.black,
        ),
        prefixIconConstraints: const BoxConstraints(minWidth: 65),
        hintText: StringConstants.passwordText,
        hintStyle: const TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          fontSize: 15,
          color: ColorConstants.darkGrey,
        ),
        suffixIcon: isVisible
            ? IconButton(
                onPressed: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                icon: const Icon(Icons.visibility),
                iconSize: 20,
                splashRadius: 1,
                color: isEmptyPasswordInput
                    ? ColorConstants.darkGrey
                    : ColorConstants.black,
              )
            : IconButton(
                onPressed: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                icon: const Icon(Icons.visibility_off),
                iconSize: 20,
                splashRadius: 1,
                color: isEmptyPasswordInput
                    ? ColorConstants.darkGrey
                    : ColorConstants.black,
              ),
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        border: const UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color: ColorConstants.purple),
        ),
      ),
    );
  }
}
