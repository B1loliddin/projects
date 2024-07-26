import 'package:electronic_book_reader_app/services/constants/colors.dart';
import 'package:electronic_book_reader_app/services/constants/fonts.dart';
import 'package:electronic_book_reader_app/services/constants/icons.dart';
import 'package:electronic_book_reader_app/services/constants/strings.dart';
import 'package:flutter/material.dart';

class CustomTextFieldView extends StatelessWidget {
  const CustomTextFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: CustomColors.whiteGrey,
          border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(28)),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(28)),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.all(12),
            child: Image(
              image: CustomIcons.search,
              width: 25,
            ),
          ),
          prefix: SizedBox(width: 3),
          hintText: CustomStrings.homePageSearchForBooksHintText,
          hintStyle: TextStyle(
            fontFamily: CustomFonts.inter,
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: CustomColors.lightBlack,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.all(12),
            child: Image(
              image: CustomIcons.microphone,
              width: 25,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 20),
        ),
      ),
    );
  }
}
