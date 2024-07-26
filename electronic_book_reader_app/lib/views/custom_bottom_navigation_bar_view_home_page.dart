import 'package:electronic_book_reader_app/services/constants/colors.dart';
import 'package:electronic_book_reader_app/services/constants/icons.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBarViewHomePage extends StatefulWidget {
  const CustomBottomNavigationBarViewHomePage({super.key});

  @override
  State<CustomBottomNavigationBarViewHomePage> createState() =>
      _CustomBottomNavigationBarViewHomePageState();
}

class _CustomBottomNavigationBarViewHomePageState
    extends State<CustomBottomNavigationBarViewHomePage> {
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    List<AssetImage> bottomNavigationBarIcons = [
      CustomIcons.home,
      CustomIcons.category,
      CustomIcons.bookmark,
      CustomIcons.profile,
    ];

    void onPressedIcon(int i) {
      selectedItem = i;
      setState(() {});
    }

    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: CustomColors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 50,
            color: CustomColors.black.withOpacity(0.15),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < bottomNavigationBarIcons.length; i++)
            CustomBottomNavigationBarViewHomePageItem(
              selectedItem: selectedItem,
              i: i,
              onPressed: () => onPressedIcon(i),
              icon: bottomNavigationBarIcons[i],
            ),
        ],
      ),
    );
  }
}

class CustomBottomNavigationBarViewHomePageItem extends StatelessWidget {
  final int selectedItem;
  final int i;
  final void Function() onPressed;
  final AssetImage icon;

  const CustomBottomNavigationBarViewHomePageItem({
    super.key,
    required this.selectedItem,
    required this.i,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),

        /// #top pressed indicator
        selectedItem == i
            ? Container(
                width: 9,
                height: 9,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColors.purple,
                ),
              )
            : const SizedBox(),
        selectedItem == i ? const SizedBox() : const SizedBox(height: 8),

        /// #icon
        IconButton(
          onPressed: onPressed,
          splashRadius: 22,
          icon: Image(
            image: icon,
            width: 35,
            color: selectedItem == i ? CustomColors.purple : CustomColors.grey,
          ),
        ),
      ],
    );
  }
}
