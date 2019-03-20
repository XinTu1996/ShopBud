import 'package:flutter/material.dart';

import 'package:shopbud/shopping_list/list_card.dart';
import 'package:shopbud/model/shoppinglist.dart';
import 'package:shopbud/utils/fake_data.dart';

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

  List<ShoppingList> shoppingLists = FakeData.shoppingLists;

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