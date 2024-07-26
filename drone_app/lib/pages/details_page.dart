import 'package:drone_app/services/constants/colors.dart';
import 'package:drone_app/services/constants/icons.dart';
import 'package:drone_app/services/constants/strings.dart';
import 'package:drone_app/views/drone_information_view.dart';
import 'package:drone_app/views/drone_on_sale_view.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double x = MediaQuery.of(context).size.width;

    final DroneOnSaleView arguments =
        ModalRoute.of(context)!.settings.arguments as DroneOnSaleView;

    final List<DroneInformationView> droneCharacteristics = [
      const DroneInformationView(
        icon: CustomIcons.videoFilled,
        firstText: 'Video Filled',
        secondText: '6K 30fps\nCinemaDNG',
      ),
      const DroneInformationView(
        firstGradientColor: CustomColors.darkPurple,
        secondGradientColor: CustomColors.darkestBlue,
        beginAlignment: Alignment.bottomLeft,
        endAlignment: Alignment.topRight,
        icon: CustomIcons.time,
        firstText: 'Flight Time',
        secondText: 'Approx.\n41 minutes',
      ),
      const DroneInformationView(
        firstGradientColor: CustomColors.darkestBlue,
        secondGradientColor: CustomColors.darkPurple,
        beginAlignment: Alignment.bottomLeft,
        endAlignment: Alignment.topRight,
        icon: CustomIcons.lightningOutlined,
        firstText: 'Max Speed',
        secondText: '23 m/s\nMax Speed',
      ),
      const DroneInformationView(
        icon: CustomIcons.nfc,
        firstText: 'Connectivity',
        secondText: '7000 m\nControl range',
      ),
    ];

    return Scaffold(
      backgroundColor: CustomColors.darkestBlue,
      appBar: AppBar(
        centerTitle: false,
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        titleSpacing: 25,
        title: Container(
          width: 45,
          height: 45,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              colors: [
                CustomColors.secondLightPurple,
                CustomColors.darkestBlue,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Material(
            color: CustomColors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Image(image: CustomIcons.arrowLeft, width: 10),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Image(image: CustomIcons.logo, width: x * 0.1),
          const SizedBox(width: 20),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 80),

              /// #
              Stack(
                children: [
                  Align(
                    alignment: const Alignment(0, 0.3),
                    child: ClipOval(
                      clipper: MyClipper(),
                      child: Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 380,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                CustomColors.blue,
                                Color(0xff58eeff),
                              ],
                              end: Alignment.centerLeft,
                              begin: Alignment.centerRight),
                        ),

                        ///#second container under drone
                        child: ClipOval(
                          clipper: MyClipper(),
                          child: Container(
                            height: 98,
                            width: 378,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff424161),
                                  Color(0xff16182C),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// #
                  SizedBox(
                    height: 120,
                    child: Align(
                      alignment: const Alignment(0, -15),
                      child: Transform.scale(
                        scale: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Image(image: arguments.droneImage, width: 200),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 110,
                    child: Align(
                      alignment: Alignment(0, 1),
                      child: Icon(
                        Icons.account_box,
                        color: CustomColors.lightBlue,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              /// #
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      width: 105,
                      height: 25,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        color: CustomColors.white.withOpacity(0.10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /// #
                          Image(image: CustomIcons.lightningFilled, width: 22),
                          SizedBox(width: 2),

                          /// #
                          Text(
                            CustomStrings.bestSellers,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: CustomColors.yellow,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              /// #
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  CustomStrings.dJIMatrice30Series,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: CustomColors.white,
                  ),
                ),
              ),
              const SizedBox(height: 5),

              /// #
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'Get a feel for what it is like to own DJI Matrice in advance. A balance of power and portability delivers higher operational efficiency. With IP55 protection, the M30 can easily handle adverse weather and temperatures ranging from -20° C～50° C. The built-in ADS-B receiver provides timely warnings of any incoming crewed aircraft nearby.',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.5,
                    color: CustomColors.lightPurple,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              /// #drone characteristics
              SizedBox(
                height: 300,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.6 / 1,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (_, i) {
                      return droneCharacteristics[i];
                    },
                  ),
                ),
              ),

              /// #
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(31),
                      topRight: Radius.circular(31),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        CustomColors.blue,
                        CustomColors.lightBlue,
                      ],
                      begin: Alignment(-2.5, 0),
                      end: Alignment(1, 0),
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    height: 62,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(31),
                        topRight: Radius.circular(31),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          CustomStrings.buyNowButtonText,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                            color: CustomColors.darkestBlue,
                          ),
                        ),
                        SizedBox(width: 10),
                        Image(image: CustomIcons.arrowRight, width: 25)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// #top left light
          Align(
            alignment: const Alignment(-2.5, -1.8),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 50,
                    color: CustomColors.purple.withOpacity(0.4),
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

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    double y = size.height;
    double x = size.width;
    return Rect.fromCenter(center: Offset(x / 2, y / 2), width: x, height: y);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) => false;
}
