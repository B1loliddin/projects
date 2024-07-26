import 'package:flutter/material.dart';
import 'package:online_bike_shopping_app/services/constants/icons.dart';

import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';

class ItemView extends StatefulWidget {
  final int selectedIndex;
  final int index;
  final AssetImage image;
  final String type;
  final String name;
  final String price;
  final Size size;
  final Size imageSize;
  final void Function() onPressed;

  const ItemView({
    Key? key,
    required this.selectedIndex,
    required this.index,
    required this.image,
    required this.type,
    required this.name,
    required this.price,
    required this.size,
    required this.imageSize,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ClipPath(
            clipper: ProductClipper(),
            child: Container(
              width: widget.size.width,
              height: widget.size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    CustomColors.white.withOpacity(.2),
                    CustomColors.black.withOpacity(.2),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: ClipPath(
            clipper: ProductClipper(),
            child: Container(
              width: widget.size.width - 5,
              height: widget.size.height - 5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: widget.selectedIndex == widget.index
                      ? [
                          CustomColors.color353F54,
                          CustomColors.color222834,
                        ]
                      : [
                          CustomColors.color363E51.withOpacity(.6),
                          CustomColors.color191E26.withOpacity(.6),
                        ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: widget.selectedIndex == widget.index
                    ? [
                        BoxShadow(
                          color: CustomColors.color2B3445.withOpacity(.5),
                          offset: const Offset(0, -20),
                          blurRadius: 40,
                        ),
                        BoxShadow(
                          color: CustomColors.color10141C.withOpacity(.6),
                          offset: const Offset(0, 20),
                          blurRadius: 60,
                        ),
                      ]
                    : [
                        BoxShadow(
                          color: CustomColors.black.withOpacity(.25),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
              ),
              child: ElevatedButton(
                onPressed: widget.onPressed,
                style: ElevatedButton.styleFrom(
                  minimumSize: widget.size,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.only(top: 20, left: 18, right: 16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// #is liked button
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          isLike = !isLike;
                          setState(() {});
                        },
                        child: Image(
                          image: isLike
                              ? CustomIcons.heartColored
                              : CustomIcons.heart,
                          width: isLike ? 20 : 26,
                          height: isLike ? 18 : 24,
                        ),
                      ),
                    ),

                    /// #image
                    Image(
                      image: widget.image,
                      width: widget.imageSize.width,
                      height: widget.imageSize.height,
                    ),
                    const SizedBox(height: 17),

                    /// #type
                    Text(
                      widget.type,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.poppins,
                        color: CustomColors.white.withOpacity(.6),
                      ),
                    ),

                    /// #name
                    Text(
                      widget.name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.poppins,
                        color: CustomColors.white,
                      ),
                    ),

                    /// #price
                    Text(
                      widget.price,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.poppins,
                        color: CustomColors.white.withOpacity(.6),
                      ),
                    ),
                    const SizedBox(height: 14),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ProductClipper extends CustomClipper<Path> {
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

  @override
  Path getClip(Size size) {
    final x = size.width;
    final y = size.height;
    var roundnessFactor = 20.0;

    Path path = Path();

    path.moveTo(0, y * 0.33);
    path.lineTo(0, y);
    path.quadraticBezierTo(0, y, roundnessFactor, y);
    path.lineTo(x - roundnessFactor, y * .95);
    path.quadraticBezierTo(x, y * .95, x, y * .95 - roundnessFactor);
    path.lineTo(x, roundnessFactor * 2);
    path.quadraticBezierTo(
      x - 10,
      roundnessFactor,
      x - roundnessFactor * 1.6,
      roundnessFactor * 1.4,
    );

    path.lineTo(
      roundnessFactor * 0.6,
      size.height * 0.20 - roundnessFactor * 0.3,
    );
    path.quadraticBezierTo(
      0,
      size.height * 0.20,
      0,
      size.height * 0.20 + roundnessFactor,
    );

    return path;
  }
}
