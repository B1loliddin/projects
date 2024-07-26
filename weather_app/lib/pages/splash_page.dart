import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/colors.dart';
import 'package:weather_app/views/splash_page_views/middle_text_view.dart';
import 'package:weather_app/views/splash_page_views/weather_app_logo_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 2500)).then(
      (value) => Navigator.pushReplacementNamed(
        context,
        '/introduction_page',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.darkBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // #logo
            const WeatherAppLogoView(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),

            // #weather x middle text
            const MiddleTextView(),
          ],
        ),
      ),
    );
  }
}
