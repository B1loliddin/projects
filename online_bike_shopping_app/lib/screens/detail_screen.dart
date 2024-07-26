import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:online_bike_shopping_app/models/bike_model.dart';
import 'package:online_bike_shopping_app/screens/shopping_bag_screen.dart';
import 'package:online_bike_shopping_app/services/constants/colors.dart';
import 'package:online_bike_shopping_app/services/constants/fonts.dart';
import 'package:online_bike_shopping_app/services/constants/icons.dart';
import 'package:online_bike_shopping_app/services/constants/images.dart';
import 'package:online_bike_shopping_app/services/constants/strings.dart';
import 'package:online_bike_shopping_app/views/blue_button.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  PageController controller = PageController();
  int selectedIndex = 0;
  int descriptionSpecification = 0;
  ProductModel bikeModel = ProductModel.create(
    name: "PEUGEOT - LR01",
    description:
        "The LR01 uses the same design as the most\niconic bikes from PEUGEOT Cycles' 130-year\nhistory and combines it with agile, dynamic\nperformance that's perfectly suited to\nnavigating today's cities. As well as a lugged\nsteel frame and iconic PEUGEOT black-and-\nwhite chequer design, this city bike also\nfeatures a 16-speed Shimano Claris drivetrain.",
    price: 1.99999,
    type: "Road Bike",
    image: CustomImages.whiteBike,
  );

  @override
  Widget build(BuildContext context) {
    final x = MediaQuery.of(context).size.width;
    final y = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: CustomColors.color242C3B,
      body: Stack(
        children: [
          CustomPaint(
            size: Size(x, y),
            painter: MyCustomPainter(),
          ),
          Column(
            children: [
              const SizedBox(height: 65),
              Row(
                children: [
                  const SizedBox(width: 20),
                  BlueButton(
                    image: CustomIcons.arrowBack,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 56),
                  Text(
                    bikeModel.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: Fonts.poppins,
                      color: CustomColors.white,
                    ),
                  ),
                  const SizedBox(width: 58),
                ],
              ),
              const SizedBox(height: 36),
              SizedBox(
                height: 222,
                child: PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    selectedIndex = index;
                    setState(() {});
                  },
                  children: [
                    Image(
                      image: bikeModel.image,
                      width: 286,
                      height: 222,
                    ),
                    Image(
                      image: bikeModel.image,
                      width: 286,
                      height: 222,
                    ),
                    Image(
                      image: bikeModel.image,
                      width: 286,
                      height: 222,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      selectedIndex = 0;
                      controller.animateToPage(
                        selectedIndex,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
                      setState(() {});
                    },
                    child: Container(
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: selectedIndex == 0
                            ? CustomColors.white
                            : CustomColors.white.withOpacity(.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const SizedBox(width: 7),
                  InkWell(
                    onTap: () {
                      selectedIndex = 1;
                      controller.animateToPage(
                        selectedIndex,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
                      setState(() {});
                    },
                    child: Container(
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: selectedIndex == 1
                            ? CustomColors.white
                            : CustomColors.white.withOpacity(.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const SizedBox(width: 7),
                  InkWell(
                    onTap: () {
                      selectedIndex = 2;
                      controller.animateToPage(
                        selectedIndex,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear,
                      );
                      setState(() {});
                    },
                    child: Container(
                      width: 5.5,
                      height: 5.5,
                      decoration: BoxDecoration(
                        color: selectedIndex == 2
                            ? CustomColors.white
                            : CustomColors.white.withOpacity(.2),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 44),
              Container(
                height: 515,
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: CustomColors.white.withOpacity(.2)),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  gradient: const LinearGradient(
                    colors: [
                      CustomColors.color353F54,
                      CustomColors.color222834,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                padding: const EdgeInsets.only(top: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 44),
                        InkWell(
                          onTap: () {
                            descriptionSpecification = 0;
                            setState(() {});
                          },
                          splashColor: Colors.black,
                          child: Container(
                            width: 133,
                            height: 43,
                            decoration: BoxDecoration(
                              color: CustomColors.color353F54,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: descriptionSpecification == 0
                                  ? const [
                                      BoxShadow(
                                        offset: Offset(-4, -4),
                                        color: CustomColors.color353F54,
                                        blurRadius: 10,
                                      ),
                                      BoxShadow(
                                        offset: Offset(4, 4),
                                        color: CustomColors.color262E3D,
                                        blurRadius: 10,
                                      ),
                                    ]
                                  : const [
                                      BoxShadow(
                                        offset: Offset(-4, -4),
                                        color: CustomColors.color353F54,
                                        blurRadius: 8,
                                        inset: true,
                                      ),
                                      BoxShadow(
                                        offset: Offset(4, 4),
                                        color: CustomColors.color262E3D,
                                        blurRadius: 8,
                                        inset: true,
                                      ),
                                    ],
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              Strings.description,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: descriptionSpecification == 0
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                                fontFamily: Fonts.poppins,
                                color: descriptionSpecification == 0
                                    ? CustomColors.color4B4CED
                                    : CustomColors.white.withOpacity(.6),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        InkWell(
                          onTap: () {
                            descriptionSpecification = 1;
                            setState(() {});
                          },
                          splashColor: Colors.black,
                          child: Container(
                            width: 133,
                            height: 43,
                            decoration: BoxDecoration(
                              color: CustomColors.color353F54,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              ),
                              boxShadow: descriptionSpecification == 1
                                  ? const [
                                      BoxShadow(
                                        offset: Offset(-4, -4),
                                        color: CustomColors.color353F54,
                                        blurRadius: 10,
                                      ),
                                      BoxShadow(
                                        offset: Offset(4, 4),
                                        color: CustomColors.color262E3D,
                                        blurRadius: 10,
                                      ),
                                    ]
                                  : const [
                                      BoxShadow(
                                        offset: Offset(-4, -4),
                                        color: CustomColors.color353F54,
                                        blurRadius: 8,
                                        inset: true,
                                      ),
                                      BoxShadow(
                                        offset: Offset(4, 4),
                                        color: CustomColors.color262E3D,
                                        blurRadius: 8,
                                        inset: true,
                                      ),
                                    ],
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              Strings.specification,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: descriptionSpecification == 1
                                    ? FontWeight.bold
                                    : FontWeight.w400,
                                fontFamily: Fonts.poppins,
                                color: descriptionSpecification == 1
                                    ? CustomColors.color4B4CED
                                    : CustomColors.white.withOpacity(.6),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 29),

                    /// bike name
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        bikeModel.name,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          fontFamily: Fonts.poppins,
                          color: CustomColors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                    /// bike description
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        bikeModel.description,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontFamily: Fonts.poppins,
                          color: CustomColors.white.withOpacity(.6),
                          height: 1.6,
                        ),
                      ),
                    ),
                    const SizedBox(height: 13),
                    Container(
                      height: 104,
                      decoration: BoxDecoration(
                        color: CustomColors.color262E3D,
                        gradient: LinearGradient(
                          colors: [
                            CustomColors.white.withOpacity(.2),
                            CustomColors.black.withOpacity(.2),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(50),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, -10),
                            color: CustomColors.color1C222E,
                            blurRadius: 40,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        height: 102,
                        decoration: const BoxDecoration(
                          color: CustomColors.color262E3D,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 37, right: 39),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$ ${bikeModel.price.toString().substring(0, bikeModel.price.toString().length - 2)}.${bikeModel.price.toString().substring(bikeModel.price.toString().length - 2)}",
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                fontFamily: Fonts.poppins,
                                color: CustomColors.color4B4CED,
                              ),
                            ),

                            /// #add to cart
                            Container(
                              width: 160,
                              height: 44,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                gradient: const LinearGradient(
                                  colors: [
                                    CustomColors.color37B6E9,
                                    CustomColors.color4B4CED,
                                  ],
                                  end: Alignment.bottomRight,
                                  begin: Alignment.topLeft,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0, -20),
                                    color: CustomColors.color242C3B
                                        .withOpacity(.5),
                                    blurRadius: 30,
                                  ),
                                  const BoxShadow(
                                    offset: Offset(0, 20),
                                    color: CustomColors.color10141C,
                                    blurRadius: 30,
                                  ),
                                ],
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ShoppingBagScreen(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(168, 44),
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  Strings.addToCart,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: Fonts.poppins,
                                    color: CustomColors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final x = size.width;
    final y = size.height;

    Paint paint = Paint();
    paint.color = CustomColors.color4B4CED;
    paint.style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(x * .7, 0);
    path.lineTo(0, y * .8);
    path.lineTo(x, y * .8);
    path.lineTo(x, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
