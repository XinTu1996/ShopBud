import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:shopbud/model/shoppinglist.dart';

class ListCard extends StatefulWidget {
  final ShoppingList list;

  ListCard(this.list);

  @override
  _ListCardState createState() => _ListCardState(list);

}

class _ListCardState extends State<ListCard> {
  ShoppingList list;
  Size deviceSize;

  _ListCardState(this.list);

  Widget get listCard {
    String cT = list.createTime.toString();
    cT = cT.substring(0, cT.lastIndexOf("\."));
    String uT = list.updateTime.toString();
    uT = uT.substring(0, uT.lastIndexOf("\."));

    return Container(
      //width: deviceSize.width - 5.0,
      //height: deviceSize.height / 8,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
        elevation: 4.0,
        color: Colors.black87,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 6.0,
                color: Colors.lightGreen,
              ),
            ),
          ),
          padding: const EdgeInsets.only(
            top: 2.0,
            bottom: 2.0,
            left: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(widget.list.name,
                      style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                  Text(widget.list.note,
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  Text("created on: " + cT,
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                  Text("updated on: " + uT,
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0
      ),
      child: Container(
        //height: 200.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              //left: 50.0,
              child: listCard,
            )
          ],
        ),
      ),
    );
  }
}