import 'package:flutter/material.dart';

import 'package:shopbud/shopping_list/list_card.dart';
import 'package:shopbud/model/shoppinglist.dart';

class HistoryLists extends StatelessWidget {
  final List<ShoppingList> lists;

  HistoryLists(this.lists);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  ListView _buildList(context) {
    return ListView.builder(
      itemCount: lists.length,
      itemBuilder: (context, int) {
        return ListCard(lists[int]);
      },
    );
  }
}

class HistoryListsPage extends StatefulWidget {

  final String title;

  HistoryListsPage({
    this.title="My Shopping List"
  });


  @override
  _HistoryListsPageState createState() => new _HistoryListsPageState();
}

class _HistoryListsPageState extends State<HistoryListsPage> {

  List<ShoppingList> shoppingLists = []
    ..add(ShoppingList(
      'list1',
      'weekly list',
      'user1',
      DateTime.parse("2019-02-20 18:23:21"),
      DateTime.now()
    ))
    ..add(ShoppingList(
        'list2',
        'list for travel to SF',
        'user1',
        DateTime.parse("2019-03-01 18:23:21"),
        DateTime.parse("2019-03-01 18:23:21")
    ));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child: HistoryLists(shoppingLists),
      ),
    );
  }
}