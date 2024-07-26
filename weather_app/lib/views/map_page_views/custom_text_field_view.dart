import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/colors.dart';
import 'package:weather_app/services/constants/fonts.dart';
import 'package:weather_app/services/constants/icons.dart';
import 'package:weather_app/services/constants/strings.dart';

class CustomTextFieldView extends StatelessWidget {
  const CustomTextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.1,
          top: 20,
          bottom: 20,
        ),
        hintText: CustomStrings.textFieldHintText,
        hintStyle: CustomFonts.hintTextStyle(),
        suffixIcon: Transform.scale(
          scale: 0.4,
          child: const Image(
            image: CustomIcons.search,
            width: 10,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          borderSide: BorderSide(
            width: 1,
            color: CustomColors.blueGrey,
          ),
        ),
      ),
    );
  }
}
