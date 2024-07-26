import 'package:electronic_book_reader_app/services/constants/colors.dart';
import 'package:electronic_book_reader_app/services/constants/fonts.dart';
import 'package:electronic_book_reader_app/services/constants/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookOnSaleView extends StatelessWidget {
  final Color backgroundColorOfBook;
  final AssetImage bookImage;
  final String bookName;
  final String bookRating;
  final String bookAuthor;
  final String bookPrice;
  final String bookCategory;
  final int numberOfPages;
  final String bookSynopsis;
  final String bookHeaderText;
  final String bookText;
  final void Function() onTap;

  const BookOnSaleView({
    super.key,
    required this.backgroundColorOfBook,
    required this.bookImage,
    required this.bookName,
    required this.bookRating,
    required this.bookAuthor,
    required this.bookPrice,
    required this.bookCategory,
    required this.numberOfPages,
    required this.bookSynopsis,
    required this.bookHeaderText,
    required this.bookText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: CustomColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 25),
            blurRadius: 60,
            color: CustomColors.black.withOpacity(0.05),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// #image in container
          Container(
            width: x,
            height: y * 0.22,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: backgroundColorOfBook,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 50,
                    color: CustomColors.black.withOpacity(0.2),
                  ),
                ],
              ),
              child: Image(image: bookImage),
            ),
          ),
          const SizedBox(height: 12),

          /// #book name, star icon, rating
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// #book name
                Expanded(
                  child: Text(
                    '${bookName.substring(0, 8)}...',
                    style: TextStyle(
                      fontFamily: CustomFonts.playfairDisplay,
                      fontWeight: FontWeight.w500,
                      fontSize: x > 350 ? 18 : 14,
                      color: CustomColors.black,
                    ),
                  ),
                ),

                /// #star icon and rating
                Container(
                  width: x * 0.09,
                  height: 15,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: CustomColors.secondYellow,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// #star icon
                      Icon(
                        CupertinoIcons.star_fill,
                        size: x > 350 ? 12 : 8,
                        color: CustomColors.darkYellow,
                      ),

                      /// #rating
                      Text(
                        bookRating,
                        style: TextStyle(
                          fontFamily: CustomFonts.inter,
                          fontWeight: FontWeight.w400,
                          fontSize: x > 350 ? 12 : 8,
                          color: CustomColors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),

          /// #book author
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              bookAuthor,
              style: TextStyle(
                fontFamily: CustomFonts.inter,
                fontWeight: FontWeight.w400,
                fontSize: x > 350 ? 14 : 10,
                color: CustomColors.secondGrey,
              ),
            ),
          ),
          const Spacer(flex: 2),

          /// #price, icon arrow forward
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// #book price
                Text(
                  bookPrice,
                  style: TextStyle(
                    fontFamily: CustomFonts.inter,
                    fontWeight: FontWeight.w600,
                    fontSize: x > 350 ? 16 : 12,
                    color: CustomColors.black,
                  ),
                ),

                /// #icon arrow forward
                Material(
                  color: CustomColors.transparent,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: InkWell(
                    onTap: onTap,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      width: x > 350 ? 30 : 20,
                      height: x > 350 ? 30 : 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.black),
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: CustomIcons.arrowForward,
                        width: x > 350 ? 20 : 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
