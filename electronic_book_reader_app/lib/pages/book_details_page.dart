import 'package:electronic_book_reader_app/services/constants/colors.dart';
import 'package:electronic_book_reader_app/services/constants/fonts.dart';
import 'package:electronic_book_reader_app/services/constants/icons.dart';
import 'package:electronic_book_reader_app/services/constants/strings.dart';
import 'package:electronic_book_reader_app/views/book_on_sale_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  const BookDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;
    final double y = MediaQuery.of(context).size.height;

    final BookOnSaleView arguments =
        ModalRoute.of(context)!.settings.arguments as BookOnSaleView;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          /// #book, info about book
          Stack(
            alignment: const Alignment(0, 1.15),
            children: [
              /// #
              Container(
                width: x,
                height: y * 0.5,
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                    image: arguments.bookImage,
                    fit: BoxFit.cover,
                    opacity: 0.2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 60, right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// #icon arrow back
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            color: CustomColors.white,
                            border: Border.all(color: CustomColors.black),
                            shape: BoxShape.circle,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Image(
                              image: CustomIcons.arrowBack,
                              width: 10,
                            ),
                          ),
                        ),
                      ),

                      /// #book name, book author, book image
                      Column(
                        children: [
                          /// #book name
                          Text(
                            arguments.bookName,
                            style: const TextStyle(
                              fontFamily: CustomFonts.playfairDisplay,
                              fontWeight: FontWeight.w500,
                              fontSize: 24,
                              color: CustomColors.black,
                            ),
                          ),
                          const SizedBox(height: 5),

                          /// #book author
                          Text(
                            arguments.bookAuthor,
                            style: const TextStyle(
                              fontFamily: CustomFonts.inter,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: CustomColors.thirdGrey,
                            ),
                          ),
                          SizedBox(height: x * 0.02 + y * 0.02),

                          /// #book image
                          Image(
                            image: arguments.bookImage,
                            width: x * 0.1 + y * 0.1,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),

                      /// #
                      const SizedBox(width: 35),
                    ],
                  ),
                ),
              ),

              /// #rating, category, pages
              Padding(
                padding: EdgeInsets.symmetric(horizontal: x * 0.1),
                child: Container(
                  height: x * 0.04 + y * 0.05,
                  decoration: BoxDecoration(
                    color: CustomColors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 24),
                        blurRadius: 50,
                        color: CustomColors.black.withOpacity(0.05),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// #
                        Container(
                          width: x * 0.13,
                          height: 22,
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
                                size: x > 350 ? 16 : 8,
                                color: CustomColors.darkYellow,
                              ),

                              /// #rating
                              Text(
                                arguments.bookRating,
                                style: TextStyle(
                                  fontFamily: CustomFonts.inter,
                                  fontWeight: FontWeight.w600,
                                  fontSize: x > 350 ? 14 : 8,
                                  color: CustomColors.black,
                                ),
                              ),
                            ],
                          ),
                        ),

                        /// #rating
                        Container(
                          height: 22,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            color: CustomColors.green,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              arguments.bookCategory,
                              style: TextStyle(
                                fontFamily: CustomFonts.inter,
                                fontWeight: FontWeight.w500,
                                fontSize: x > 350 ? 14 : 8,
                                color: CustomColors.black,
                              ),
                            ),
                          ),
                        ),

                        /// #number of pages
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: CustomFonts.inter,
                              fontWeight: FontWeight.w600,
                              fontSize: x > 350 ? 14 : 8,
                              color: CustomColors.black,
                            ),
                            children: [
                              TextSpan(text: '${arguments.numberOfPages} '),
                              const TextSpan(
                                text: 'Pages',
                                style: TextStyle(fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: x * 0.045 + y * 0.045),

          /// #
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// #
                const Text(
                  'Synopsis',
                  style: TextStyle(
                    fontFamily: CustomFonts.playfairDisplay,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: CustomColors.black,
                  ),
                ),
                const SizedBox(height: 15),

                /// #
                Text(
                  arguments.bookSynopsis,
                  style: const TextStyle(
                    fontFamily: CustomFonts.inter,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 0.5,
                    wordSpacing: 1,
                    color: CustomColors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: CustomColors.white,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -3),
                blurRadius: 40,
                color: CustomColors.black.withOpacity(0.2)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// #
              Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: CustomColors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 16),
                      blurRadius: 30,
                      color: CustomColors.black.withOpacity(0.1),
                    ),
                  ],
                ),
                child: const Image(image: CustomIcons.favourite),
              ),

              /// #
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/reader_page',
                      arguments: arguments);
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: CustomColors.purple,
                  fixedSize: Size(x * 0.03 * y * 0.026, 55),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
                child: const Text(
                  CustomStrings.bookDetailsPageReadNowButtonText,
                  style: TextStyle(
                    fontFamily: CustomFonts.inter,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: CustomColors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
