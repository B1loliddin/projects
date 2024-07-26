// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter_app/pages/book_page.dart';
import 'package:harry_potter_app/pages/character_page.dart';
import 'package:harry_potter_app/pages/movie_page.dart';
import 'package:harry_potter_app/pages/potion_page.dart';
import 'package:harry_potter_app/pages/spell_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Harry Potter',
          style: TextStyle(
            fontFamily: 'Lora',
            fontWeight: FontWeight.w600,
            fontSize: 26,
            letterSpacing: 1.2,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          currentIndex = page;
          setState(() {});
        },
        children: [
          /// #movie page
          MoviePage(),

          /// #
          CharacterPage(),

          /// #
          BookPage(),

          /// #
          PotionPage(),

          /// #
          SpellPage(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  currentIndex = 0;
                  _pageController.animateToPage(
                    currentIndex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linear,
                  );
                  setState(() {});
                },
                icon: currentIndex == 0
                    ? Icon(CupertinoIcons.film_fill)
                    : Icon(CupertinoIcons.film),
              ),
              IconButton(
                onPressed: () {
                  currentIndex = 1;
                  _pageController.animateToPage(currentIndex,
                      duration: Duration(milliseconds: 400),
                      curve: Curves.linear);
                  setState(() {});
                },
                icon: currentIndex == 1
                    ? Icon(CupertinoIcons.person_fill)
                    : Icon(CupertinoIcons.person),
              ),
              IconButton(
                onPressed: () {
                  currentIndex = 2;
                  _pageController.animateToPage(
                    currentIndex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linear,
                  );
                  setState(() {});
                },
                icon: currentIndex == 2
                    ? Icon(CupertinoIcons.book_fill)
                    : Icon(CupertinoIcons.book),
              ),
              IconButton(
                onPressed: () {
                  currentIndex = 3;
                  _pageController.animateToPage(
                    currentIndex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linear,
                  );

                  setState(() {});
                },
                icon: currentIndex == 3
                    ? Icon(CupertinoIcons.lab_flask_solid)
                    : Icon(CupertinoIcons.lab_flask),
              ),
              IconButton(
                onPressed: () {
                  currentIndex = 4;
                  _pageController.animateToPage(
                    currentIndex,
                    duration: Duration(milliseconds: 400),
                    curve: Curves.linear,
                  );

                  setState(() {});
                },
                icon: currentIndex == 4
                    ? Icon(CupertinoIcons.book_fill)
                    : Icon(CupertinoIcons.book),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
