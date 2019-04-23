import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:shopbud/home_page.dart';
import 'package:shopbud/login_register/login_page.dart';
import 'package:shopbud/login_register/register_page.dart';
import 'package:shopbud/utils/uidata.dart';
import 'package:shopbud/shopping_list/historylists_page.dart';
import 'package:shopbud/shopping_list/oldlist_page.dart';
import 'package:shopbud/shopping_list/newlist_page.dart';
import 'package:shopbud/shopping_list/products_page.dart';
import 'package:shopbud/promotion/promotion_page.dart';
import 'package:shopbud/promotion/storePromoListView.dart';
import 'package:shopbud/utils/fake_data.dart';
import 'package:shopbud/store/pandas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    FakeData data = FakeData();
    return MaterialApp(
      title: 'ShopBud',
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: UIData.quickFont,
        primarySwatch: Colors.amber
      ),


      home: MyHomePage(),

      routes: <String, WidgetBuilder>{
        UIData.registerRoute: (BuildContext context) => RegisterPage(),
        UIData.homeRoute: (BuildContext context) => MyHomePage(),
        UIData.historyListsRoute: (BuildContext context) => HistoryListsPage(),
        UIData.oldListRoute: (BuildContext context) => OldListPage(),
        UIData.newListRoute: (BuildContext context) => NewListPage(),
        UIData.productsRoute: (BuildContext context) => ProductsPage(),
      },
    );
  }
}

