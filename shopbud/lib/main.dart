import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:shopbud/home_page.dart';
import 'package:shopbud/utils/uidata.dart';
import 'package:shopbud/shopping_list/products_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //FakeData data = FakeData();
    return MaterialApp(
      title: 'ShopBud',
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: UIData.quickFont,
        primarySwatch: Colors.amber
      ),


      home: MyHomePage(),

      routes: <String, WidgetBuilder>{
        UIData.homeRoute: (BuildContext context) => MyHomePage(),
        UIData.productsRoute: (BuildContext context) => ProductsPage(),
      },
    );
  }
}

