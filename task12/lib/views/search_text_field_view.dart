import 'package:flutter/material.dart';
import 'package:task12/services/constants/colors.dart';
import 'package:task12/services/constants/fonts.dart';
import 'package:task12/services/constants/icons.dart';
import 'package:task12/services/constants/strings.dart';

class SearchTextFieldView extends StatelessWidget {
  const SearchTextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: CustomColors.whiteGrey,
          contentPadding: EdgeInsets.symmetric(vertical: 25),
          prefixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: Image(
              image: CustomIcons.search,
              width: 10,
            ),
          ),
          prefix: SizedBox(width: 8),
          hintText: CustomStrings.searchForBooksHintText,
          hintStyle: TextStyle(
            fontFamily: CustomFonts.inter,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: CustomColors.lightBlack,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(10),
            child: Image(
              image: CustomIcons.microphone,
              width: 10,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(35)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(35)),
          )
        ),
      ),
    );
  }
}
