import 'package:flutter/material.dart';
import 'package:weather_app/services/constants/images.dart';

class WeatherAppLogoView extends StatelessWidget {
  const WeatherAppLogoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Image(
      image: CustomImages.weatherAppLogo,
      width: MediaQuery.of(context).size.width * 0.32,
    );
  }
}
