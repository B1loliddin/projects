import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/database/data.dart';
import 'package:online_bike_shopping_app/screens/detail_screen.dart';
import 'package:online_bike_shopping_app/services/constants/colors.dart';
import 'package:online_bike_shopping_app/services/constants/fonts.dart';
import 'package:online_bike_shopping_app/services/constants/icons.dart';
import 'package:online_bike_shopping_app/services/constants/images.dart';
import 'package:online_bike_shopping_app/services/constants/strings.dart';
import 'package:online_bike_shopping_app/views/blue_button.dart';
import 'package:online_bike_shopping_app/views/bottom_bar_item_view.dart';
import 'package:online_bike_shopping_app/views/category_view.dart';
import 'package:online_bike_shopping_app/views/item_view.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  int selectedIndex = 0;
  int itemSelectedIndex = 0;
  int bottomBarSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: CustomColors.color242C3B,
      body: Stack(
        children: [
          /// #background shape
          ClipPath(
            clipper: BackgroundShapeClipper(),
            child: Container(
              width: x,
              height: y,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    CustomColors.color37B6E9,
                    CustomColors.color4B4CED,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.black.withOpacity(.25),
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
          ),

          /// #main
          Stack(
            children: [
              SafeArea(
                minimum: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    /// #app bar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          Strings.chooseYourBike,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: Fonts.poppins,
                            color: CustomColors.white,
                          ),
                        ),
                        BlueButton(
                          image: CustomIcons.search,
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),

                    /// #baner
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: ClipPath(
                            clipper: BannerClipper(),
                            child: Container(
                              width: 342,
                              height: 237,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    CustomColors.white.withOpacity(.2),
                                    CustomColors.black.withOpacity(.2),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                            ),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: ClipPath(
                            clipper: BannerClipper(),
                            child: Container(
                              width: 339,
                              height: 234,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    CustomColors.color353F54.withOpacity(.6),
                                    CustomColors.color242C3B.withOpacity(.6),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: CustomColors.color3B475F
                                        .withOpacity(.5),
                                    offset: const Offset(0, -20),
                                    blurRadius: 60,
                                  ),
                                  BoxShadow(
                                    color: CustomColors.color10141C
                                        .withOpacity(.6),
                                    offset: const Offset(0, 20),
                                    blurRadius: 60,
                                  ),
                                ],
                              ),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaY: Shadow.convertRadiusToSigma(100),
                                  sigmaX: Shadow.convertRadiusToSigma(100),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 30),

                                    /// #image
                                    const Image(
                                      image: CustomImages.electricBike,
                                      width: 316,
                                      height: 153,
                                    ),

                                    /// #text
                                    Padding(
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Text(
                                        "30% Off",
                                        style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: Fonts.poppins,
                                          color: CustomColors.white
                                              .withOpacity(.6),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    /// #categories
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /// #all
                        CategoryView(
                          selectedIndex: selectedIndex,
                          index: 0,
                          onPressed: () {
                            selectedIndex = 0;
                            setState(() {});
                          },
                          text: Strings.all,
                          imageSize: const Size(0, 0),
                          margin: const EdgeInsets.only(top: 42),
                        ),
                        const SizedBox(width: 20),

                        /// #bicycle
                        CategoryView(
                          selectedIndex: selectedIndex,
                          index: 1,
                          onPressed: () {
                            selectedIndex = 1;
                            setState(() {});
                          },
                          image: CustomIcons.bicycle,
                          imageSize: const Size(36, 24),
                          margin: const EdgeInsets.only(top: 32),
                        ),
                        const SizedBox(width: 20),

                        /// #road
                        CategoryView(
                          selectedIndex: selectedIndex,
                          index: 2,
                          onPressed: () {
                            selectedIndex = 2;
                            setState(() {});
                          },
                          image: CustomIcons.road,
                          imageSize: const Size(30, 30),
                          margin: const EdgeInsets.only(top: 22),
                        ),
                        const SizedBox(width: 20),

                        /// #mountains
                        CategoryView(
                          selectedIndex: selectedIndex,
                          index: 3,
                          onPressed: () {
                            selectedIndex = 3;
                            setState(() {});
                          },
                          image: CustomIcons.mountains,
                          imageSize: const Size(30, 30),
                          margin: const EdgeInsets.only(top: 12),
                        ),
                        const SizedBox(width: 20),

                        /// #helmet
                        CategoryView(
                          selectedIndex: selectedIndex,
                          index: 4,
                          onPressed: () {
                            selectedIndex = 4;
                            setState(() {});
                          },
                          image: CustomIcons.helmet,
                          imageSize: const Size(27, 27),
                        ),
                      ],
                    ),

                    /// #items
                    SizedBox(
                      height: 422,
                      child: SingleChildScrollView(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                ItemView(
                                  selectedIndex: itemSelectedIndex,
                                  index: 0,
                                  image: models[0].image,
                                  type: models[0].type,
                                  name: models[0].name,
                                  price: models[0].getPrice(),
                                  size: const Size(165, 260),
                                  imageSize: const Size(121, 87.5),
                                  onPressed: () {
                                    itemSelectedIndex = 0;
                                    setState(() {});
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailScreen(),
                                      ),
                                    );
                                  },
                                ),
                                ItemView(
                                  selectedIndex: itemSelectedIndex,
                                  index: 2,
                                  image: models[2].image,
                                  type: models[2].type,
                                  name: models[2].name,
                                  price: models[2].getPrice(),
                                  size: const Size(165, 253),
                                  imageSize: const Size(121, 87.5),
                                  onPressed: () {
                                    itemSelectedIndex = 2;
                                    setState(() {});
                                  },
                                ),
                                ItemView(
                                  selectedIndex: itemSelectedIndex,
                                  index: 4,
                                  image: models[1].image,
                                  type: models[1].type,
                                  name: models[1].name,
                                  price: models[1].getPrice(),
                                  size: const Size(165, 265),
                                  imageSize: const Size(121, 87.5),
                                  onPressed: () {
                                    itemSelectedIndex = 4;
                                    setState(() {});
                                  },
                                ),
                                const SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                            const SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 90),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ItemView(
                                    selectedIndex: itemSelectedIndex,
                                    index: 1,
                                    image: models[2].image,
                                    type: models[2].type,
                                    name: models[2].name,
                                    price: models[2].getPrice(),
                                    size: const Size(165, 240),
                                    imageSize: const Size(121, 87.5),
                                    onPressed: () {
                                      itemSelectedIndex = 1;
                                      setState(() {});
                                    },
                                  ),
                                  ItemView(
                                    selectedIndex: itemSelectedIndex,
                                    index: 3,
                                    image: models[1].image,
                                    type: models[1].type,
                                    name: models[1].name,
                                    price: models[1].getPrice(),
                                    size: const Size(165, 255),
                                    imageSize: const Size(116, 79),
                                    onPressed: () {
                                      itemSelectedIndex = 3;
                                      setState(() {});
                                    },
                                  ),
                                  ItemView(
                                    selectedIndex: itemSelectedIndex,
                                    index: 5,
                                    image: models[2].image,
                                    type: models[2].type,
                                    name: models[2].name,
                                    price: models[2].getPrice(),
                                    size: const Size(165, 240),
                                    imageSize: const Size(121, 87.5),
                                    onPressed: () {
                                      itemSelectedIndex = 5;
                                      setState(() {});
                                    },
                                  ),
                                  const SizedBox(
                                    height: 100,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              /// #bottom navigation bar
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipPath(
                  clipper: BottomBarClipper(),
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          CustomColors.color363E51,
                          CustomColors.color181C24,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomBarItemView(
                        icon: CustomIcons.bicycle,
                        selectedIndex: bottomBarSelectedIndex,
                        index: 0,
                        onPressed: () {
                          bottomBarSelectedIndex = 0;
                          setState(() {});
                        },
                        iconSize: const Size(37, 28),
                      ),
                      BottomBarItemView(
                        icon: CustomIcons.map,
                        selectedIndex: bottomBarSelectedIndex,
                        index: 1,
                        onPressed: () {
                          bottomBarSelectedIndex = 1;
                          setState(() {});
                        },
                        iconSize: const Size(18.5, 18.5),
                      ),
                      BottomBarItemView(
                        icon: CustomIcons.shop,
                        selectedIndex: bottomBarSelectedIndex,
                        index: 2,
                        onPressed: () {
                          bottomBarSelectedIndex = 2;
                          setState(() {});
                        },
                        iconSize: const Size(20, 18),
                      ),
                      BottomBarItemView(
                        icon: CustomIcons.personFill,
                        selectedIndex: bottomBarSelectedIndex,
                        index: 3,
                        onPressed: () {
                          bottomBarSelectedIndex = 3;
                          setState(() {});
                        },
                        iconSize: const Size(15, 19),
                      ),
                      BottomBarItemView(
                        icon: CustomIcons.document,
                        selectedIndex: bottomBarSelectedIndex,
                        index: 4,
                        onPressed: () {
                          bottomBarSelectedIndex = 4;
                          setState(() {});
                        },
                        iconSize: const Size(15, 19),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BackgroundShapeClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

  @override
  Path getClip(Size size) {
    final x = size.width;
    final y = size.height;

    Path path = Path();
    path.moveTo(0, y);
    path.lineTo(x * .8, y * .18);
    path.lineTo(x, y * .24);
    path.lineTo(x, y);
    path.close();

    return path;
  }
}

class BannerClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

  @override
  Path getClip(Size size) {
    double radius = 20;

    final x = size.width;
    final y = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(x, 0);
    path.lineTo(x, y * .85);
    path.arcTo(
      Rect.fromCircle(
          center: Offset(x - radius, y * .85 - radius), radius: radius),
      0,
      0.5 * pi,
      false,
    );
    path.lineTo(0, y);
    path.close();

    return path;
  }
}

class BottomBarClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

  @override
  Path getClip(Size size) {
    final x = size.width;
    final y = size.height;

    Path path = Path();
    path.moveTo(0, y * .193);
    path.lineTo(x, 0);
    path.lineTo(x, y);
    path.lineTo(0, y);
    path.close();

    return path;
  }
}
