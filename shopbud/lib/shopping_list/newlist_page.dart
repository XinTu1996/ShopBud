import 'package:flutter/material.dart';

import 'package:shopbud/shopping_list/added_item_card.dart';
import 'package:shopbud/model/shoppinglist.dart';
import 'package:shopbud/model/item.dart';

class NewList extends StatelessWidget {
  final List<Item> lists;

  NewList(this.lists);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  ListView _buildList(context) {
    return ListView.builder(
      itemCount: lists.length,
      itemBuilder: (context, int) {
        return AddedItemCard(lists[int]);
      },
    );
  }
}

class NewListPage extends StatefulWidget {

  final String title;

  NewListPage({
    this.title="New List"
  });


  @override
  _NewListPageState createState() => new _NewListPageState();
}

class _NewListPageState extends State<NewListPage> {

  List<Item> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child: NewList(items),
      ),
    );
  }
}