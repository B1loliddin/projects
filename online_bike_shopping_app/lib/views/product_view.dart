import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:online_bike_shopping_app/models/bike_model.dart';
import 'package:online_bike_shopping_app/services/constants/colors.dart';
import 'package:online_bike_shopping_app/services/constants/fonts.dart';
import 'package:online_bike_shopping_app/services/constants/icons.dart';
import 'package:online_bike_shopping_app/views/blue_button.dart';

class ProductView extends StatefulWidget {
  final ProductModel productModel;
  final Size imageSize;
  final double price;
  final void Function() onAdd;
  final void Function() onRemove;
  int count;

  ProductView({
    Key? key,
    required this.productModel,
    required this.imageSize,
    required this.count,
    required this.price,
    required this.onAdd,
    required this.onRemove,
  }) : super(key: key);

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    final product = widget.productModel;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// #image
            Container(
              width: 100,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
                gradient: LinearGradient(
                  colors: [
                    CustomColors.white.withOpacity(.2),
                    CustomColors.black.withOpacity(.2),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 98,
                height: 88,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      CustomColors.color363E51,
                      CustomColors.color4C5770,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                alignment: Alignment.center,
                child: Image(
                  image: product.image,
                  width: widget.imageSize.width,
                  height: widget.imageSize.height,
                ),
              ),
            ),
            const SizedBox(width: 16),

            /// #name - price
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: Fonts.poppins,
                    color: CustomColors.white,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  product.getPrice().length > 10
                      ? product.getPrice().substring(0, 10)
                      : product.getPrice(),
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: Fonts.poppins,
                    color: CustomColors.color3C9EEA,
                  ),
                ),
              ],
            ),
            SizedBox(width: product.name.length >= 20 ? 10 : 70),

            /// #counter
            Container(
              width: 80,
              height: 30,
              margin: const EdgeInsets.only(top: 53.5),
              decoration: const BoxDecoration(
                color: CustomColors.color262E3D,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-2, -2),
                    color: CustomColors.color262E3D,
                    blurRadius: 4,
                    inset: true,
                  ),
                  BoxShadow(
                    offset: Offset(2, 2),
                    color: CustomColors.color1C222E,
                    blurRadius: 4,
                    inset: true,
                  ),
                ],
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 3, right: 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlueButton(
                    image: CustomIcons.add,
                    onPressed: widget.onAdd,
                    width: 24,
                    height: 24,
                    imageWidth: 16,
                    imageHeight: 16,
                    radius: 5,
                  ),
                  Text(
                    widget.count.toString(),
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: Fonts.poppins,
                      color: CustomColors.white.withOpacity(.6),
                    ),
                  ),
                  BlueButton(
                    image: CustomIcons.remove,
                    onPressed: widget.onRemove,
                    width: 24,
                    height: 24,
                    imageWidth: 16,
                    imageHeight: 16,
                    radius: 5,
                    gradient: const [
                      CustomColors.color353F54,
                      CustomColors.color353F54,
                    ],
                    iconColor: CustomColors.white.withOpacity(.6),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          height: 1,
          color: CustomColors.white.withOpacity(.5),
        )
      ],
    );
  }
}
