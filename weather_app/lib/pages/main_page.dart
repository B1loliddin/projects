import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/pages/map_page.dart';
import 'package:weather_app/pages/mood_page.dart';
import 'package:weather_app/pages/settings_page.dart';
import 'package:weather_app/services/constants/colors.dart';
import 'package:weather_app/views/certain_pages_views/custom_bottom_app_bar_view.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController = PageController(initialPage: 0);
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.whiteAccent,
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selectedItem = index;
          });
        },
        children: const [
          // #
          HomePage(),

          // #
          MoodPage(),

          // #
          MapPage(),

          // #
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: CustomBottomAppBarView(
        pageController: pageController,
        selectedItem: selectedItem,
      ),
    );
  }
}
