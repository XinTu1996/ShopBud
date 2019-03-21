import 'package:flutter/material.dart';

import 'package:shopbud/shopping_list/added_item_card.dart';
import 'package:shopbud/model/shoppinglist.dart';
import 'package:shopbud/model/item.dart';
import 'package:shopbud/utils/fake_data.dart';

class OldList extends StatelessWidget {
  final ShoppingList list;

  OldList(this.list);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  ListView _buildList(context) {
    return ListView.builder(
      itemCount: list.items.length,
      itemBuilder: (context, int) {
        return AddedItemCard(list.items[int]);
      },
    );
  }
}

class OldListPage extends StatefulWidget {

  @override
  _OldListPageState createState() => new _OldListPageState();
}

class _OldListPageState extends State<OldListPage> {

 ShoppingList list = FakeData.list1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: Text(list.name),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        child: OldList(list),
      ),
    );
  }
}