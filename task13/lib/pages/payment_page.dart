import 'package:flutter/material.dart';
import 'package:task13/services/constants/colors.dart';
import 'package:task13/services/constants/fonts.dart';
import 'package:task13/services/constants/icons.dart';
import 'package:task13/views/primary_button_view.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          /// #
          Stack(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1542362567-b07e54358753?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fGNhcnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
                width: x,
                height: y * 0.7,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 90,
                child: Align(
                  alignment: const Alignment(0, 1),
                  child: Image(
                    image: CustomIcons.logo,
                    width: x * 0.25,
                    color: CustomColors.white,
                  ),
                ),
              ),
            ],
          ),

          /// #
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: x,
              height: y * 0.4,
              decoration: const BoxDecoration(
                color: CustomColors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  const Spacer(flex: 2),

                  /// #
                  const Text(
                    'Summary',
                    style: TextStyle(
                      fontFamily: CustomFonts.gothamPro,
                      fontSize: 22,
                      color: CustomColors.blueGrey,
                    ),
                  ),
                  const Spacer(flex: 1),

                  /// #
                  const Text(
                    'Your Model Y',
                    style: TextStyle(
                      fontFamily: CustomFonts.gothamPro,
                      fontWeight: FontWeight.w600,
                      fontSize: 40,
                      color: CustomColors.white,
                    ),
                  ),
                  const Spacer(),

                  /// #
                  const Text(
                    '\$60,700',
                    style: TextStyle(
                      fontFamily: CustomFonts.gothamPro,
                      fontSize: 28,
                      color: CustomColors.white,
                    ),
                  ),
                  const Spacer(flex: 2),

                  /// #
                  PrimaryButtonView(
                    onPressed: () {},
                    width: x * 0.7,
                    buttonText: 'Pay',
                    textColor: CustomColors.white,
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
