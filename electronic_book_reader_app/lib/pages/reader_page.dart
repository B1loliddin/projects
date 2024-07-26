import 'package:electronic_book_reader_app/services/constants/colors.dart';
import 'package:electronic_book_reader_app/services/constants/fonts.dart';
import 'package:electronic_book_reader_app/services/constants/strings.dart';
import 'package:electronic_book_reader_app/views/book_on_sale_view.dart';
import 'package:flutter/material.dart';

class ReaderPage extends StatefulWidget {
  const ReaderPage({super.key});

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  double sizeOfText = 16.0;

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;

    final BookOnSaleView arguments =
        ModalRoute.of(context)!.settings.arguments as BookOnSaleView;

    String headerThreeLines = '';
    String allText = arguments.bookText;

    String textClipper() {
      int width = (x - ((4 * sizeOfText) - 40) - (x * 0.28)).toInt();

      List list = allText.split(' ');
      int letterWidth = sizeOfText ~/ 2;
      int totalWidth = 0;
      int wordsInOneLine = 0;

      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < list.length; j++) {
          String currentWord = list[j];
          totalWidth += letterWidth * currentWord.length;

          if (width > totalWidth) {
            headerThreeLines += '$currentWord ';
            wordsInOneLine++;
          }
        }
        list.removeRange(0, wordsInOneLine);
        headerThreeLines += '\n';
        wordsInOneLine = 0;
        totalWidth = 0;
      }

      return headerThreeLines.substring(1);
    }

    String clipMainText() =>
        allText.replaceFirst(headerThreeLines.split('\n').join(), '');

    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20),

          /// #chapter one text
          const Center(
            child: Text(
              CustomStrings.readerPageChapterNowText,
              style: TextStyle(
                fontFamily: CustomFonts.playfairDisplay,
                fontWeight: FontWeight.w500,
                fontSize: 30,
                decoration: TextDecoration.underline,
                color: CustomColors.black,
              ),
            ),
          ),
          const SizedBox(height: 30),

          /// #header text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(color: CustomColors.black),
              ),
              child: Text(
                arguments.bookHeaderText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: CustomFonts.inter,
                  fontWeight: FontWeight.w400,
                  fontSize: sizeOfText,
                  color: CustomColors.black,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          /// #full text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                /// #introduction
                SizedBox(
                  height: 3 * sizeOfText,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      /// #big letter
                      Container(
                        width: 3 * sizeOfText,
                        height: 4 * sizeOfText,
                        alignment: Alignment.center,
                        child: Text(
                          allText.substring(0, 1),
                          style: TextStyle(
                            fontFamily: CustomFonts.inter,
                            fontSize: 3.5 * sizeOfText,
                            height: 1,
                          ),
                        ),
                      ),

                      /// #introduction
                      Container(
                        height: 3.25 * sizeOfText,
                        alignment: Alignment.topCenter,
                        child: Text(
                          textClipper(),
                          style: TextStyle(
                            fontSize: sizeOfText,
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// #main text
                Text(
                  clipMainText(),
                  style: TextStyle(fontSize: sizeOfText, height: 0),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        decoration: BoxDecoration(
          color: CustomColors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -2),
              blurRadius: 50,
              color: CustomColors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// #
            Text(
              'Size of Text: $sizeOfText',
              style: const TextStyle(fontSize: 16),
            ),

            /// #
            Row(
              children: [
                /// #
                ElevatedButton(
                  onPressed: () {
                    if (sizeOfText < 20) {
                      sizeOfText += 1;
                    }
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade300,
                    fixedSize: const Size(50, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                /// #
                ElevatedButton(
                  onPressed: () {
                    if (sizeOfText > 10) {
                      sizeOfText -= 1;
                    }
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade300,
                    fixedSize: const Size(50, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
