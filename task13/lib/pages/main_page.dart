import 'package:flutter/material.dart';
import 'package:task13/pages/autopilot_page.dart';
import 'package:task13/pages/car_page.dart';
import 'package:task13/pages/exterior_page.dart';
import 'package:task13/pages/interior_page.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late final PageController controller;

  List<bool> isPressed = [true, false, false, false];
  String totalPrice = '\$55,700';

  int selectedIndex = 0;
  int lastPage = 0;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;

    final buttons = [
      "1. Car",
      "2. Exterior",
      "3. Interior",
      "4. Autopilot",
    ];

    void onTapTab(int i) {
      if (i <= lastPage) {
        selectedIndex = i;
        setState(() {});
        controller.animateToPage(i,
            duration: const Duration(milliseconds: 450), curve: Curves.linear);
      }
    }

    void onPressButton(int i) {
      selectedIndex = i;
      lastPage = lastPage < i ? i : lastPage;
      setState(() {});
      controller.animateToPage(i,
          duration: const Duration(milliseconds: 450), curve: Curves.linear);
    }

    return Scaffold(
      backgroundColor: CustomColors.scaffoldBackgroundColors,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(18),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Image(image: CustomIcons.arrowBack, width: 20),
          ),
        ),
        title: Image(
          image: CustomIcons.logo,
          width: x * 0.25,
          color: CustomColors.black,
        ),
        bottom: PreferredSize(
          preferredSize: const Size(0, 50),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (int i = 0; i < buttons.length; i++)
                  TabBarButton(
                    onPressed: () => onTapTab(i),
                    text: buttons[i],
                    i: i,
                    selectedIndex: selectedIndex,
                    lastPage: lastPage,
                  ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          /// #car page
          CarPage(
            nextButtonOnPressed: () {
              isPressed[1] = true;
              if (totalPrice == '\$55,700') {
                totalPrice = '\$57,700';
              } else if (totalPrice == '\$46,700') {
                totalPrice = '\$48,700';
              }
              onPressButton(1);
            },
            firstPriceOnPressed: () {
              if (totalPrice == '\$46,700') {
                totalPrice = '\$55,700';
              } else if (totalPrice == '\$48,700') {
                totalPrice = '\$57,700';
              }
              setState(() {});
            },
            secondPriceOnPressed: () {
              if (totalPrice == '\$55,700') {
                totalPrice = '\$46,700';
              } else if (totalPrice == '\$57,700') {
                totalPrice = '\$48,700';
              }
              setState(() {});
            },
            totalPrice: totalPrice,
          ),

          /// #extreior page
          ExteriorPage(
            nextButtonOnPressed: () {
              if (totalPrice == '\$57,700') {
                totalPrice = '\$58,700';
              } else if (totalPrice == '\$48,700') {
                totalPrice = '\$49,700';
              }
              isPressed[2] = true;
              onPressButton(2);
            },
            totalPrice: totalPrice,
          ),

          /// #interior page
          InteriorPage(
            totalPrice: totalPrice,
            nextButtonOnPressed: () {
              if (totalPrice == '\$58,700') {
                totalPrice = '\$63,700';
              } else if (totalPrice == '\$49,700') {
                totalPrice = '\$54,700';
              }
              isPressed[3] = true;
              onPressButton(3);
            },
          ),

          /// #autopilot page
          AutopilotPage(
            totalPrice: totalPrice,
            nextButtonOnPressed: () {
              Navigator.pushNamed(context, '/payment_page');
            },
            firstPriceOnPressed: () {
              if (totalPrice == '\$54,700') {
                totalPrice = '\$54,700';
              } else if (totalPrice == '\$48,700') {
                totalPrice = '\$57,700';
              }
              setState(() {});
            },
            secondPriceOnPressed: () {
              if (totalPrice == '\$54,700') {
                totalPrice = '\$52,700';
              } else if (totalPrice == '\$48,700') {
                totalPrice = '\$57,700';
              }
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}

class TabBarButton extends StatelessWidget {
  final void Function()? onPressed;
  final int lastPage;
  final int selectedIndex;
  final int i;
  final String text;

  const TabBarButton({
    Key? key,
    this.onPressed,
    required this.lastPage,
    required this.selectedIndex,
    required this.text,
    required this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Text(
            text,
            style: (i <= lastPage)
                ? const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  )
                : const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 2,
            width: text.length * 7,
            color: (selectedIndex == i) ? Colors.red : Colors.transparent,
          )
        ],
      ),
    );
  }
}
