import 'package:electronic_book_reader_app/services/constants/colors.dart';
import 'package:electronic_book_reader_app/services/constants/fonts.dart';
import 'package:electronic_book_reader_app/services/constants/strings.dart';
import 'package:flutter/material.dart';

class ReadBookView extends StatelessWidget {
  final Color color;
  final AssetImage image;
  final String bookName;
  final String bookAuthor;
  final String bookProgress;
  final void Function() buttonOnPressed;

  const ReadBookView(
      {required this.color,
      required this.image,
      super.key,
      required this.bookName,
      required this.bookAuthor,
      required this.bookProgress,
      required this.buttonOnPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 160,
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: CustomColors.black.withOpacity(0.05),
          )
        ],
      ),
      child: Row(
        children: [
          /// #image in blue container
          Container(
            width: 120,
            height: 160,
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10.5, 7),
                    blurRadius: 45,
                    color: CustomColors.black.withOpacity(0.25),
                  )
                ],
              ),
              child: Image(
                image: image,
              ),
            ),
          ),

          /// #info about book
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 17),

                /// #book name
                Text(
                  bookName,
                  style: const TextStyle(
                    fontFamily: CustomFonts.playfairDisplay,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: CustomColors.black,
                  ),
                ),
                const SizedBox(height: 2),

                /// #book author
                Text(
                  bookAuthor,
                  style: const TextStyle(
                    fontFamily: CustomFonts.inter,
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: CustomColors.secondGrey,
                  ),
                ),
                const SizedBox(height: 15),

                /// #progress bar
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 5,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: CustomColors.lightGrey,
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 5,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: CustomColors.pink,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),

                /// #progress text
                SizedBox(
                  width: 152,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        bookProgress,
                        style: const TextStyle(
                          fontFamily: CustomFonts.inter,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),

                /// #
                ElevatedButton(
                  onPressed: buttonOnPressed,
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: CustomColors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      side: BorderSide(color: CustomColors.purple),
                    ),
                    fixedSize: const Size(130, 20),
                  ),
                  child: const Text(
                    CustomStrings.homePageUpdateProgressButtonText,
                    style: TextStyle(
                      fontFamily: CustomFonts.inter,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: CustomColors.purple,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
