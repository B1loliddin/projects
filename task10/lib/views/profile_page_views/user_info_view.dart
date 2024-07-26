import 'package:flutter/material.dart';
import 'package:task10/services/constants/colors.dart';
import 'package:task10/services/constants/fonts.dart';
import 'package:task10/services/constants/images.dart';
import 'package:task10/services/constants/strings.dart';
import 'package:task10/views/profile_page_views/top_container_view.dart';

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.095,
      ),
      child: Stack(
        alignment: const Alignment(0, 1.2),
        children: [
          Container(
            height: 350,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: CustomColors.white,
              boxShadow: CustomFonts.containerShadow(),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 35, top: 35, right: 35),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // #user image and user text
                    Row(
                      children: [
                        // #user image
                        UserImageView(),
                        Spacer(flex: 1),

                        // #three texts
                        UserLinkNameJob(),
                        Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 20),

                    // #about me text
                    AboutMeText(),
                    SizedBox(height: 8),

                    // #user description text
                    UserDescription(),
                  ],
                ),
              ),
            ),
          ),

          // #
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 75,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              color: CustomColors.secondBlue,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.blueAccent,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 25),
                    color: CustomColors.darkBlue.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: -5,
                  ),
                ],
              ),
              child: const Row(
                children: [
                  // #
                  TopContainerView(
                    containerColor: CustomColors.secondBlueAccent,
                    firstText: CustomStrings.postNumber,
                    secondText: CustomStrings.post,
                  ),

                  // #
                  TopContainerView(
                    containerColor: CustomColors.secondBlue,
                    firstText: CustomStrings.followingNumber,
                    secondText: CustomStrings.following,
                  ),

                  // #
                  TopContainerView(
                    containerColor: CustomColors.secondBlue,
                    firstText: CustomStrings.followersNumber,
                    secondText: CustomStrings.followers,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserDescription extends StatelessWidget {
  const UserDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      CustomStrings.userDescription,
      style: CustomFonts.userDescriptionTextStyle(),
    );
  }
}

class AboutMeText extends StatelessWidget {
  const AboutMeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      CustomStrings.aboutMe,
      style: CustomFonts.aboutMeTextStyle(),
    );
  }
}

class UserLinkNameJob extends StatelessWidget {
  const UserLinkNameJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          CustomStrings.userProfileLink,
          style: CustomFonts.userProfileLinkTextStyle(),
        ),
        Text(
          CustomStrings.userName,
          style: CustomFonts.userNameTextStyle(),
        ),
        Text(
          CustomStrings.userJob,
          style: CustomFonts.userJobTextStyle(),
        ),
      ],
    );
  }
}

class UserImageView extends StatelessWidget {
  const UserImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(32)),
        gradient: LinearGradient(
          colors: [
            CustomColors.blueAccent,
            CustomColors.blue,
            CustomColors.lightBlue,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: const BoxDecoration(
          color: CustomColors.white,
          borderRadius: BorderRadius.all(Radius.circular(29)),
        ),
        child: const Image(
          image: CustomImages.user,
        ),
      ),
    );
  }
}
