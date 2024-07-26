import 'package:flutter/material.dart';

import '../services/constants.dart';

class InputEmailView extends StatefulWidget {
  const InputEmailView({Key? key}) : super(key: key);

  @override
  State<InputEmailView> createState() => _InputEmailViewState();
}

class _InputEmailViewState extends State<InputEmailView> {
  bool isEmptyEmailInput = true;

  void checkEmailInput(String value) {
    if (value.isEmpty) {
      setState(() {
        isEmptyEmailInput = true;
      });
    } else {
      setState(() {
        isEmptyEmailInput = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: checkEmailInput,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorConstants.lightGrey,
        prefixIcon: Icon(
          Icons.email,
          size: 20,
          color: isEmptyEmailInput
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
