import 'package:flutter/cupertino.dart';

class ProductModel {
  String name;
  String description;
  double price;
  String type;
  AssetImage image;

  ProductModel(
    this.name,
    this.description,
    this.price,
    this.type,
    this.image,
  );

  factory ProductModel.create({
    required String name,
    required String description,
    required double price,
    required String type,
    required AssetImage image,
  }) {
    if (name != "" && description != "" && price >= 1 && type != "") {
      return ProductModel(name, description, price, type, image);
    } else {
      throw Exception("Invalid data!!!");
    }
  }

  String getPrice() =>
      "\$ ${price.toString().substring(0, price.toString().length - 2)}.${price.toString().substring(price.toString().length - 2)}";
}
