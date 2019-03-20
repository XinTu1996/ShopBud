import 'package:shopbud/model/item.dart';

class ShoppingList {
  String name;
  String note;
  String creator;
  DateTime createTime;
  DateTime updateTime;
  List<Item> items;

  ShoppingList(
    this.name,
    this.note,
    this.creator,
    this.createTime,
    this.updateTime
  );
}