import 'package:flutter/material.dart';
import 'package:task12/services/constants/colors.dart';
import 'package:task12/services/constants/fonts.dart';
import 'package:task12/services/constants/strings.dart';

class ReadBookView extends StatelessWidget {
  final Color backgroundColorOfBook;
  final AssetImage bookImage;
  final String bookName;
  final String authorName;

  const  ReadBookView({
    super.key,
    required this.backgroundColorOfBook,
    required this.bookImage,
    required this.bookName,
    required this.authorName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(8, 8),
            blurRadius: 15,
            color: CustomColors.black.withOpacity(0.05),
          ),
        ],
      ),
      child: Row(
        children: [
          /// #book image
          BookImageView(
            backgroundColorOfBook: backgroundColorOfBook,
            bookImage: bookImage,
          ),

          /// #
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),

                /// #book name
                BookNameView(bookName: bookName),
                const SizedBox(height: 2),

                /// #author name
                AuthorNameView(authorName: authorName),
                const SizedBox(height: 15),

                /// #progress bar
                Container(
                  width: 170,
                  height: 7,
                  padding: const EdgeInsets.only(right: 100),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2.5)),
                    color: CustomColors.lightGrey,
                  ),
                  child: Container(
                    height: 7,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(2.5)),
                      color: CustomColors.pink,
                    ),
                  ),
                ),
                const SizedBox(height: 2),

                /// #percentage
                const Row(
                  children: [
                    SizedBox(width: 145),
                    Text(
                      '30%',
                      style: TextStyle(
                        fontFamily: CustomFonts.inter,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        color: CustomColors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                /// #update progress button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(130, 30),
                    elevation: 0,
                    backgroundColor: CustomColors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      side: BorderSide(width: 1, color: CustomColors.purple),
                    ),
                  ),
                  child: const Text(
                    CustomStrings.updateProgressButtonText,
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

class AuthorNameView extends StatelessWidget {
  final String authorName;

  const AuthorNameView({
    super.key,
    required this.authorName,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      authorName,
      style: const TextStyle(
        fontFamily: CustomFonts.inter,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: CustomColors.secondGrey,
      ),
    );
  }
}

class BookNameView extends StatelessWidget {
  final String bookName;

  const BookNameView({
    super.key,
    required this.bookName,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      bookName,
      style: const TextStyle(
        fontFamily: CustomFonts.playfairDisplay,
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: CustomColors.black,
      ),
    );
  }
}

class BookImageView extends StatelessWidget {
  final Color backgroundColorOfBook;
  final AssetImage bookImage;

  const BookImageView({
    super.key,
    required this.backgroundColorOfBook,
    required this.bookImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColorOfBook,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      child: Image(image: bookImage, width: 80),
    );
  }
}
