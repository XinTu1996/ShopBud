import 'package:flutter/material.dart';
import 'package:shopbud/model/store.dart';

class Item {
  String uuid;
  String name;
  //String brand;
  double price;
  String unit;
  int status; //0: out-of-stock, 1: in-stock
  Store store;
  String imageUrl;

  Item(this.uuid, this.name, this.price, this.unit, this.status, this.store, this.imageUrl);
}