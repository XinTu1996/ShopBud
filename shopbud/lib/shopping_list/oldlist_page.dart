import 'package:flutter/material.dart';

import 'package:shopbud/shopping_list/added_item_card.dart';
import 'package:shopbud/model/item.dart';
import 'package:shopbud/utils/fake_data.dart';

class OldList extends StatelessWidget {
  final List<Item> lists;

  OldList(this.lists);

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

class OldListPage extends StatefulWidget {

  final String title;

  OldListPage({
    this.title="New List"
  });


  @override
  _OldListPageState createState() => new _OldListPageState();
}

class _OldListPageState extends State<OldListPage> {

  List<Item> items = FakeData.items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child: OldList(items),
      ),
    );
  }
}