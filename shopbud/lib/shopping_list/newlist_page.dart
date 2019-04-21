import 'package:flutter/material.dart';

import 'package:shopbud/shopping_list/added_item_card.dart';
import 'package:shopbud/utils/fake_data.dart';
import 'package:shopbud/model/item.dart';
import 'package:shopbud/shopping_list/products_page.dart';

class NewList extends StatelessWidget {
  final List<Item> lists;

  NewList(this.lists);

  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  Widget _buildList(context) {

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

  BuildContext _context;
  List<Item> items = FakeData.items;//[];

  Widget searchCard() => Container(
    height: 80,
    child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.search),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Find our product"),
                  ),
                ),
                FlatButton(
                  onPressed: () => Navigator.pushNamed(_context, "/Products"),
                  child: Text("Search"),
                ),
              ],
            ),
          ),
        ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    _context = context;


    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            searchCard(),
            Container(
              height: MediaQuery.of(context).size.height - 230,
              child: NewList(items),
            )
          ],
        ),
      ),
    );
  }
}