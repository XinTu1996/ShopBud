import 'package:flutter/material.dart';
import 'package:shopbud/promotion/storePromo.dart';

class Item {
  String uuid;
  String name;
  //String brand;
  double price;
  String unit;
  int status; //0: out-of-stock, 1: in-stock
  storePromo store;
  String imageUrl;

  Item(this.uuid, this.name, this.price, this.unit, this.status, this.store, this.imageUrl);
}