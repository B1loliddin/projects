import 'package:electronic_book_reader_app/services/constants/colors.dart';
import 'package:electronic_book_reader_app/services/constants/fonts.dart';
import 'package:electronic_book_reader_app/services/constants/strings.dart';
import 'package:flutter/material.dart';

class BookCategoriesView extends StatefulWidget {
  const BookCategoriesView({super.key});

  @override
  State<BookCategoriesView> createState() => _BookCategoriesViewState();
}

class _BookCategoriesViewState extends State<BookCategoriesView> {
  int selectedItem = 4;

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      '',
      CustomStrings.homePageAllCategoryText,
      CustomStrings.homePageRomanceCategoryText,
      CustomStrings.homePageSciFiCategoryText,
      CustomStrings.homePageFantasyCategoryText,
      CustomStrings.homePageClassicsCategoryText,
      CustomStrings.homePageDarkAcademiaCategoryText,
    ];

    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (_, i) {
          bool isSelected = selectedItem == i;

          if (i == 0) {
            return const SizedBox(width: 20);
          } else {
            return BookCategoryItemView(
              onTap: () {
                setState(() {
                  selectedItem = i;
                });
              },
              isSelected: isSelected,
              text: categories[i],
            );
          }
        },
      ),
    );
  }
}

class BookCategoryItemView extends StatelessWidget {
  final void Function() onTap;
  final bool isSelected;
  final String text;

  const BookCategoryItemView({
    super.key,
    required this.onTap,
    required this.isSelected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          border: isSelected
              ? null
              : Border.all(
                  width: 1.25,
                  color: CustomColors.grey,
                ),
          color: isSelected ? CustomColors.purple : null,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: CustomFonts.inter,
            fontWeight: isSelected ? FontWeight.w500 : FontWeight.w400,
            fontSize: 14,
            color: isSelected ? CustomColors.white : CustomColors.grey,
          ),
        ),
      ),
    );
  }
}
