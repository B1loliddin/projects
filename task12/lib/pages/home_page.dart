import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task12/services/constants/colors.dart';
import 'package:task12/services/constants/fonts.dart';
import 'package:task12/services/constants/icons.dart';
import 'package:task12/services/constants/images.dart';
import 'package:task12/services/constants/strings.dart';
import 'package:task12/views/category_item_view.dart';
import 'package:task12/views/read_book_view.dart';
import 'package:task12/views/search_text_field_view.dart';
import 'package:task12/views/sold_books_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedItem = 3;

  @override
  Widget build(BuildContext context) {
    final List categories = [
      CustomStrings.homePageAllCategory,
      CustomStrings.homePageRomanceCategory,
      CustomStrings.homePageSciFiCategory,
      CustomStrings.homePageFantasyCategory,
      CustomStrings.homePageClassicsCategory,
      CustomStrings.homePageDarkAcademiaCategory,
    ];

    final List soldBooks = [
      const SoldBookView(
        backgroundColor: CustomColors.secondYellow,
        bookImage: CustomImages.thirdBook,
        bookName: CustomStrings.homePageBookOfNightBookHeaderText,
        bookRating: CustomStrings.homePageBookOfNightBookRating,
        authorName: CustomStrings.homePageBookOfNightBookAuthor,
        bookPrice: CustomStrings.homePageBookOfNightBookPrice,
      ),
      const SoldBookView(
        backgroundColor: CustomColors.orange,
        bookImage: CustomImages.fourthBook,
        bookName: CustomStrings.homePageTheWolfDenBookHeaderText,
        bookRating: CustomStrings.homePageTheWolfDenBookRating,
        authorName: CustomStrings.homePageTheWolfDenBookAuthor,
        bookPrice: CustomStrings.homePageTheWolfDenBookPrice,
      ),
      const SoldBookView(
        backgroundColor: CustomColors.secondBlue,
        bookImage: CustomImages.fifthBook,
        bookName: CustomStrings.homePageARiverEnchantedHeaderText,
        bookRating: CustomStrings.homePageARiverEnchantedBookRating,
        authorName: CustomStrings.homePageARiverEnchantedBookAuthor,
        bookPrice: CustomStrings.homePageARiverEnchantedBookPrice,
      ),
      const SoldBookView(
        backgroundColor: CustomColors.secondPink,
        bookImage: CustomImages.sixthBook,
        bookName: CustomStrings.homePageTheseViolentDelightsHeaderText,
        bookRating: CustomStrings.homePageTheseViolentDelightsBookRating,
        authorName: CustomStrings.homePageTheseViolentDelightsBookAuthor,
        bookPrice: CustomStrings.homePageTheseViolentDelightsBookPrice,
      ),
    ];

    int itemCount = soldBooks.length;

    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        centerTitle: false,
        forceMaterialTransparency: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleSpacing: 20,
        title: RichText(
          text: TextSpan(
            style: CustomFonts.appBarTextDefaultStyle(),
            children: const <TextSpan>[
              TextSpan(text: CustomStrings.homePageFirstHeaderText),
              TextSpan(
                text: CustomStrings.homePageSecondHeaderText,
                style: TextStyle(
                  color: CustomColors.pink,
                ),
              ),
            ],
          ),
        ),
        actions: const [
          /// #notification icon
          Image(
            image: CustomIcons.notification,
            width: 30,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height: 10),

          /// #search text field
          const SearchTextFieldView(),
          const SizedBox(height: 24),

          /// #categories of books
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, i) {
                  bool isSelected = selectedItem == i;

                  return CategoryItemView(
                    onPressed: () {
                      setState(() {
                        selectedItem = i;
                      });
                    },
                    isSelected: isSelected,
                    text: categories[i],
                  );
                },
                separatorBuilder: (context, i) {
                  return const SizedBox(width: 12);
                },
              ),
            ),
          ),
          const SizedBox(height: 20),

          /// #continue reading text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  CustomStrings.homePageContinueReadingText,
                  style: CustomFonts.primaryTextStyle(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),

          /// #books
          SizedBox(
            height: 170,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  /// #
                  ReadBookView(
                    backgroundColorOfBook: CustomColors.blue,
                    bookImage: CustomImages.firstBook,
                    bookName:
                        CustomStrings.homePageADayOfFallenNightBookHeaderText,
                    authorName:
                        CustomStrings.homePageADayOfFallenNightBookAuthor,
                  ),
                  SizedBox(width: 40),

                  /// #
                  ReadBookView(
                    backgroundColorOfBook: CustomColors.secondWhiteGrey,
                    bookImage: CustomImages.secondBook,
                    bookName:
                        CustomStrings.homePageADayOfFallenNightBookHeaderText,
                    authorName:
                        CustomStrings.homePageADayOfFallenNightBookAuthor,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),

          /// #best sellers text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              CustomStrings.homePageBestSellersText,
              style: CustomFonts.primaryTextStyle(),
            ),
          ),
          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: (345 * itemCount ~/ 2).toDouble(),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 25,
                  childAspectRatio: 160 / 275,
                ),
                itemBuilder: (context, i) {
                  return soldBooks[i];
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SizedBox(
        height: 90,
        child: BottomAppBar(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// #icon home
              Image(
                image: CustomIcons.home,
                width: 30,
              ),

              /// #icon home
              Image(
                image: CustomIcons.category,
                width: 30,
              ),

              /// #icon home
              Image(
                image: CustomIcons.bookmark,
                width: 30,
              ),

              /// #icon home
              Image(
                image: CustomIcons.profile,
                width: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
