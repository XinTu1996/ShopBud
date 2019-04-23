import 'package:flutter/material.dart';

class Menu {
  String title;
  IconData icon;
  String image;
  String address;
  List<String> items;
  BuildContext context;
  Color menuColor;

  Menu({
    this.title,
    this.icon,
    this.image,
    this.address,
    this.items,
    this.context,
    this.menuColor = Colors.black
  });
}