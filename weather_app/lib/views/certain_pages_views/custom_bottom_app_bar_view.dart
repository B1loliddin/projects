import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/colors.dart';
import 'package:weather_app/services/constants/icons.dart';

class CustomBottomAppBarView extends StatefulWidget {
  final PageController pageController;
  final int selectedItem;

  const CustomBottomAppBarView({
    super.key,
    required this.pageController,
    required this.selectedItem,
  });

  @override
  State<CustomBottomAppBarView> createState() => _CustomBottomAppBarViewState();
}

class _CustomBottomAppBarViewState extends State<CustomBottomAppBarView> {
  int selectedItem = 0;

  List<AssetImage> whiteIcons = [
    CustomIcons.whiteSun,
    CustomIcons.whiteCloud,
    CustomIcons.whiteLocation,
    CustomIcons.whiteLightning,
  ];

  List<AssetImage> blueIcons = [
    CustomIcons.blueSun,
    CustomIcons.blueCloud,
    CustomIcons.blueLocation,
    CustomIcons.blueLightning,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: CustomColors.whiteAccent,
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 4; i++)
              CustomBottomAppBarItemView(
                whiteIcons: whiteIcons,
                blueIcons: blueIcons,
                selectedItem: widget.selectedItem,
                currentIndex: i,
                pageController: widget.pageController,
              ),
          ],
        ),
      ),
    );
  }
}

class CustomBottomAppBarItemView extends StatefulWidget {
  final List<AssetImage> whiteIcons;
  final List<AssetImage> blueIcons;
  int selectedItem;
  final int currentIndex;
  final PageController pageController;

  CustomBottomAppBarItemView({
    super.key,
    required this.whiteIcons,
    required this.blueIcons,
    required this.selectedItem,
    required this.currentIndex,
    required this.pageController,
  });

  @override
  State<CustomBottomAppBarItemView> createState() =>
      _CustomBottomAppBarItemViewState();
}

class _CustomBottomAppBarItemViewState
    extends State<CustomBottomAppBarItemView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      color: widget.selectedItem == widget.currentIndex
          ? CustomColors.darkBlue
          : CustomColors.whiteAccent,
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        onTap: () {
          widget.selectedItem = widget.currentIndex;
          widget.pageController.animateToPage(
            widget.selectedItem,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          alignment: Alignment.center,
          child: widget.currentIndex == 0 || widget.currentIndex == 1
              ? widget.selectedItem == widget.currentIndex
                  ? Image(
                      image: widget.whiteIcons[widget.currentIndex],
                      width: 23,
                    )
                  : Image(
                      image: widget.blueIcons[widget.currentIndex],
                      width: 23,
                    )
              : widget.selectedItem == widget.currentIndex
                  ? Image(
                      image: widget.whiteIcons[widget.currentIndex],
                      width: 18,
                    )
                  : Image(
                      image: widget.blueIcons[widget.currentIndex],
                      width: 18,
                    ),
        ),
      ),
    );
  }
}
