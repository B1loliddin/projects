import 'package:flutter/material.dart';
import 'package:task12/services/constants/colors.dart';
import 'package:task12/services/constants/fonts.dart';
import 'package:task12/services/constants/icons.dart';

class SoldBookView extends StatelessWidget {
  final Color backgroundColor;
  final AssetImage bookImage;
  final String bookName;
  final String bookRating;
  final String authorName;
  final String bookPrice;

  const SoldBookView({
    super.key,
    required this.backgroundColor,
    required this.bookImage,
    required this.bookName,
    required this.bookRating,
    required this.authorName,
    required this.bookPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: CustomColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(5, 5),
              blurRadius: 10,
              color: CustomColors.black.withOpacity(0.1),
            )
          ],
        ),
        child: Column(
          children: [
            /// #book image in container
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                color: backgroundColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(5, 5),
                        blurRadius: 15,
                        spreadRadius: 10,
                        color: CustomColors.black.withOpacity(0.05),
                      )
                    ],
                  ),
                  child: Image(
                    image: bookImage,
                    width: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),

            /// #
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// #book name and rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// #book name
                      Text(
                        bookName,
                        style: CustomFonts.soldBookNameStyle(),
                      ),

                      /// #rating
                      Container(
                        width: 40,
                        height: 20,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: CustomColors.secondYellow,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            /// #star icon
                            const Image(
                              image: CustomIcons.star,
                              width: 12,
                            ),
                            const SizedBox(width: 5),

                            /// #rating text
                            Text(
                              bookRating,
                              style: CustomFonts.soldBookRatingStyle(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2),

                  /// #author name
                  Text(
                    authorName,
                    style: CustomFonts.soldBookAuthorNameStyle(),
                  ),
                  const SizedBox(height: 25),

                  /// #price and arrow forward
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// #price
                      Text(
                        bookPrice,
                        style: CustomFonts.soldBookPriceStyle(),
                      ),

                      /// #arrow forward
                      Container(
                        width: 30,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 1, color: CustomColors.black),
                          shape: BoxShape.circle,
                        ),
                        child: const Image(
                          image: CustomIcons.arrowForward,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
