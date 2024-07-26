import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/fonts.dart';
import 'package:weather_app/services/constants/images.dart';
import 'package:weather_app/services/constants/strings.dart';
import 'package:weather_app/views/certain_pages_views/primary_button_view.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const Spacer(flex: 4),

            // #
            const Image(image: CustomImages.errorNotFound),
            const Spacer(),

            // #
            Text(
              CustomStrings.errorText,
              style: CustomFonts.errorTextStyle(),
            ),
            const Spacer(),

            // #
            PrimaryButtonView(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/main_page');
              },
              buttonText: const ButtonTextView(text: CustomStrings.letUsGoHome),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
