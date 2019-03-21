import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:shopbud/home_page.dart';
import 'package:shopbud/utils/uidata.dart';
import 'package:shopbud/shopping_list/historylists_page.dart';
import 'package:shopbud/shopping_list/oldlist_page.dart';
import 'package:shopbud/shopping_list/newlist_page.dart';
import 'package:shopbud/utils/fake_data.dart';

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
        UIData.homeRoute: (BuildContext context) => MyHomePage(),
        UIData.historyListsRoute: (BuildContext context) => HistoryListsPage(),
        UIData.oldListRoute: (BuildContext context) => OldListPage(),
        UIData.newListRoute: (BuildContext context) => NewListPage(),
      },
    );
  }
}

