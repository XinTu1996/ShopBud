import 'package:flutter/material.dart';

class Product {
  String name;
  String image;
  //double rating;
  double price;
  String unit;
  String brand;
  String description;
  //int totalReviews;
  //List<String> sizes;
  //List<ProductColor> colors;
  bool status;
  int quantity = 0;

  Product({
    this.name,
    this.image,
    this.brand,
    this.price,
    this.unit,
    //this.rating,
    this.description,
    //this.totalReviews,
    //this.sizes,
    //this.colors,
    this.status,
    this.quantity
  });

}

/*
class ProductColor {
  final String colorName;
  final MaterialColor color;

  ProductColor({this.colorName, this.color});
}
*/
