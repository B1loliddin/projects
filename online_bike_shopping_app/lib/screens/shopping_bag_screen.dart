import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:online_bike_shopping_app/database/cardes.dart';
import 'package:online_bike_shopping_app/database/data.dart';
import 'package:online_bike_shopping_app/services/constants/strings.dart';
import 'package:online_bike_shopping_app/views/product_view.dart';

import '../services/constants/colors.dart';
import '../services/constants/fonts.dart';
import '../services/constants/icons.dart';
import '../views/blue_button.dart';

class ShoppingBagScreen extends StatefulWidget {
  const ShoppingBagScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingBagScreen> createState() => _ShoppingBagScreenState();
}

class _ShoppingBagScreenState extends State<ShoppingBagScreen> {
  List<int> counts = [1, 1, 1];
  bool checkout = false;
  String cardCode = "";

  @override
  Widget build(BuildContext context) {
    final List<double> prices = [
      1999,
      3999,
      120,
    ];

    num discountTotal(String cardCode, num subTotal) {
      for (int i = 0; i < cards.length; i++) {
        if (cards[i].cardCode == cardCode) {
          if (cards[i].discount != 0) {
            return subTotal - ((subTotal / 100) * cards[i].discount);
          }
        }
      }
      return subTotal;
    }

    num discount(String cardCode) {
      for (int i = 0; i < cards.length; i++) {
        if (cards[i].cardCode == cardCode) {
          return cards[i].discount;
        }
      }
      return 0;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.color242C3B,
      body: Column(
        children: [
          const SizedBox(height: 65),

          /// #top bar
          Row(
            children: [
              const SizedBox(width: 20),

              /// #button
              BlueButton(
                image: CustomIcons.arrowBack,
                imageWidth: 28,
                imageHeight: 28,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: 56),

              /// #my shopping cart text
              const Text(
                Strings.myShoppingCart,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: Fonts.poppins,
                  color: CustomColors.white,
                ),
              ),
              const SizedBox(width: 58),
            ],
          ),
          const SizedBox(height: 32),
          for (int i = 0; i < models.length; i++)

            /// #items
            Column(
              children: [
                ProductView(
                  productModel: models[i],
                  imageSize: const Size(80, 59),
                  count: counts[i],
                  price: models[i].price,
                  onAdd: () {
                    counts[i]++;
                    models[i].price += prices[i];
                    subTotal += prices[i];
                    setState(() {});
                  },
                  onRemove: () {
                    counts[i]--;
                    models[i].price -= prices[i];
                    subTotal -= prices[i];
                    if (counts[i] <= 0) {
                      counts[i] = 1;
                      models.removeAt(i);
                      setState(() {});
                    }
                    setState(() {});
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          const SizedBox(height: 8),

          /// #text
          Text(
            Strings.yourCartQualifiesForFreeShipping,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              fontFamily: Fonts.poppins,
              color: CustomColors.white.withOpacity(.6),
            ),
          ),
          const SizedBox(height: 24),

          /// #cart
          Container(
            width: 380,
            height: 44,
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
                  offset: Offset(4, 10),
                  color: CustomColors.color1C222E,
                  blurRadius: 30,
                  inset: true,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 266,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: Fonts.poppins,
                      color: CustomColors.white.withOpacity(.6),
                    ),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      border: InputBorder.none,
                    ),
                    onSubmitted: (text) {
                      cardCode = text;
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  width: 114,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        CustomColors.color37B6E9,
                        CustomColors.color4B4CED,
                      ],
                      end: Alignment.bottomRight,
                      begin: Alignment.topLeft,
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, double.infinity),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      padding: EdgeInsets.zero,
                    ),
                    child: const Text(
                      Strings.apply,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: Fonts.poppins,
                        color: CustomColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          Column(
            children: cardCode != ""
                ? [
                    /// #subtotal
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 20),
                            Text(
                              Strings.subtotal,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.poppins,
                                color: CustomColors.white.withOpacity(.9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ $subTotal",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: Fonts.poppins,
                                color: CustomColors.white.withOpacity(.6),
                              ),
                            ),
                            const SizedBox(width: 22),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    /// #delivery fee
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 20),
                            Text(
                              Strings.deliveryFee,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.poppins,
                                color: CustomColors.white.withOpacity(.9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ 0",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: Fonts.poppins,
                                color: CustomColors.white.withOpacity(.6),
                              ),
                            ),
                            const SizedBox(width: 22),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    /// #discount
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 20),
                            Text(
                              Strings.discount,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.poppins,
                                color: CustomColors.white.withOpacity(.9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ ${discount(cardCode)}%",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                fontFamily: Fonts.poppins,
                                color: CustomColors.white.withOpacity(.6),
                              ),
                            ),
                            const SizedBox(width: 22),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    /// #total
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 20),
                            Text(
                              Strings.total,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.poppins,
                                color: CustomColors.white.withOpacity(.9),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "\$ ${discountTotal(cardCode, subTotal)}",
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: Fonts.poppins,
                                color: CustomColors.color37B6E9,
                              ),
                            ),
                            const SizedBox(width: 22),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    /// #checkout
                    Container(
                      width: 174,
                      height: 44,
                      decoration: const BoxDecoration(
                        color: CustomColors.color262E3D,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(-2, -2),
                            color: CustomColors.color262E3D,
                            blurRadius: 8,
                            inset: true,
                          ),
                          BoxShadow(
                            offset: Offset(4, 4),
                            color: CustomColors.color11161E,
                            blurRadius: 30,
                            inset: true,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: checkout
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: checkout
                            ? [
                                BlueButton(
                                  image: CustomIcons.arrowBack,
                                  imageHeight: 28,
                                  imageWidth: 28,
                                  onPressed: () {
                                    checkout = checkout ? false : true;
                                    setState(() {});
                                  },
                                ),
                              ]
                            : [
                                BlueButton(
                                  image: CustomIcons.arrowBack,
                                  imageHeight: 28,
                                  imageWidth: 28,
                                  onPressed: () {
                                    checkout = checkout ? false : true;
                                    setState(() {});
                                  },
                                ),
                                const SizedBox(width: 23),
                                Text(
                                  Strings.checkout,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: Fonts.poppins,
                                    color: CustomColors.white.withOpacity(.6),
                                  ),
                                ),
                              ],
                      ),
                    ),
                  ]
                : [],
          ),
        ],
      ),
    );
  }
}
