import 'dart:collection';

import 'package:shopbud/model/shoppinglist.dart';
import 'package:shopbud/model/item.dart';
import 'package:shopbud/model/store.dart';

class FakeData {

  static Map<String, String> accounts = new HashMap<String, String>();

  static Store s1 = Store("s1", "Giant Eagle", "5040 Centre Avenue");

  static Item apple1 = Item(
      "i1",
      "Apple",
      1.49,
      "lb",
      1,
      s1,
      "https://cnt.gianteagle.com/api/Images/v7/products/1006549/dimensions/large/jpg"
  );
  static Item apple2 = Item(
      "i2",
      "Produce Fuji Apple",
      1.99,
      "lb",
      1,
      s1,
      "https://cnt.gianteagle.com/api/Images/v7/products/1006549/dimensions/large/jpg"
  );
  static Item apple3 = Item(
      "i2",
      "Produce Gala Apple",
      1.99,
      "lb",
      1,
      s1,
      "https://cnt.gianteagle.com/api/Images/v7/products/1006550/dimensions/250x250_padded/jpg"
  );

  static Item bread1 = Item(
      "i4",
      "Bread",
      0.05,
      "oz",
      1,
      s1,
      "https://cnt.gianteagle.com/api/Images/v7/products/1006549/dimensions/large/jpg"
  );
  static Item bread2 = Item(
      "i5",
      "Giant Eagle King Size White Enriched Bread",
      0.05,
      "oz",
      1,
      s1,
      "https://cnt.gianteagle.com/api/Images/v7/products/1011392/dimensions/large/jpg"
  );
  static Item bread3 = Item(
      "i6",
      "Schwebel's Giant Bread",
      0.14,
      "oz",
      0,
      s1,
      "https://cnt.gianteagle.com/api/Images/v7/products/641880/dimensions/large/jpg"
  );

  static List<Item> items = []
    ..add(apple2)
    ..add(bread2);

  static ShoppingList list1 = new ShoppingList(
      'list1',
      'weekly list',
      'user1',
      DateTime.parse("2019-02-20 18:23:21"),
      DateTime.now()
  );

  static ShoppingList list2 = ShoppingList(
      'list2',
      'list for school',
      'user1',
      DateTime.parse("2019-02-02 18:23:21"),
      DateTime.parse("2019-02-20 18:23:21")
  );

  static ShoppingList list3 = ShoppingList(
      'list3',
      'list for travel to SF',
      'user1',
      DateTime.parse("2019-03-01 18:23:21"),
      DateTime.parse("2019-03-01 18:23:21")
  );

  static List<ShoppingList> shoppingLists = []
    ..add(list1)
    ..add(list2)
    ..add(list3);

  FakeData() {
    list1.addItemList(items);
    accounts.putIfAbsent("root", () => "123456");
  }

}

