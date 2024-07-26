import 'package:flutter/material.dart';
import 'package:weather_app/views/certain_pages_views/custom_app_bar_view.dart';
import 'package:weather_app/views/map_page_views/custom_text_field_view.dart';
import 'package:weather_app/views/map_page_views/map_view.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Column(
          children: [
            // #
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),

            // #custom app bar
            const CustomAppBarView(),
            const Spacer(flex: 3),

            // #
            const CustomTextFieldView(),
            const Spacer(),

            // #
            const MapView(),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
