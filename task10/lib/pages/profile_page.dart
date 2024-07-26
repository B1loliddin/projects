import 'package:flutter/material.dart';
import 'package:task10/services/constants/colors.dart';
import 'package:task10/services/constants/fonts.dart';
import 'package:task10/services/constants/icons.dart';
import 'package:task10/services/constants/images.dart';
import 'package:task10/services/constants/strings.dart';
import 'package:task10/views/profile_page_views/custom_card_view.dart';
import 'package:task10/views/profile_page_views/user_info_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // #
                  Column(
                    children: [
                      // #custom app bar
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.095),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // #profile app bar text
                            Text(
                              CustomStrings.profile,
                              style: CustomFonts.appBarTextStyle(),
                            ),

                            // #menu icon
                            const Image(
                              image: CustomIcons.menu,
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // #user info top container
                      const UserInfoView(),
                      const SizedBox(height: 80),

                      // #
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 510,
                        decoration: BoxDecoration(
                          color: CustomColors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, -2),
                              color: CustomColors.darkBlue.withOpacity(0.1),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            children: [
                              const SizedBox(height: 35),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // #
                                  const Text(
                                    CustomStrings.myPosts,
                                    style: TextStyle(
                                      fontFamily: CustomFonts.avenir,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                      color: CustomColors.darkBlue,
                                    ),
                                  ),

                                  // #
                                  Row(
                                    children: [
                                      // #
                                      GestureDetector(
                                        child: const Image(
                                          image: CustomIcons.grid,
                                          width: 26,
                                        ),
                                      ),
                                      const SizedBox(width: 25),

                                      // #
                                      GestureDetector(
                                        child: const Image(
                                          image: CustomIcons.table,
                                          width: 26,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 24),

                              // #
                              const CustomCardView(
                                image: CustomImages.cardOne,
                                firstText: CustomStrings.firstCardText,
                                secondText: CustomStrings.firstCardDescription,
                              ),
                              const SizedBox(height: 30),

                              // #
                              const CustomCardView(
                                image: CustomImages.cardTwo,
                                firstText: CustomStrings.secondCardText,
                                secondText: CustomStrings.secondCardDescription,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // #
            Container(
              height: 110,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    CustomColors.firstGradientWhite.withOpacity(0),
                    CustomColors.secondGradientWhite,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

