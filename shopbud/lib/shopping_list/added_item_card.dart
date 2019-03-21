import 'package:flutter/material.dart';

import 'package:shopbud/model/item.dart';

class AddedItemCard extends StatefulWidget {
  final Item item;

  AddedItemCard(this.item);

  @override
  _AddedItemCardState createState() => _AddedItemCardState(item);
}

class _AddedItemCardState extends State<AddedItemCard> {
  Item item;
  Size deviceSize;

  _AddedItemCardState(this.item);

  Widget get itemImage {
    return Container(
      width: 85.0,
      height: 85.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.lightGreen[50],
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(item.imageUrl ?? ''),
        )
      ),
    );
  }

  Widget get itemCard {
    return Container(
      width: 330.0,
      height: 115.0,
      child: Card(
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8.0,
            bottom: 8.0,
            left: 40.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: 240.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(widget.item.name,
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    Text("\$ " + widget.item.price.toString() + " / " + widget.item.unit,
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                    Text(widget.item.status == 1 ? "in-stock" : "out-of-stock",
                        style: TextStyle(color: Colors.white, fontSize: 14))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: Container(
        height: 115.0,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 50.0,
              child: itemCard,
            ),
            Positioned(
              top: 15,
              child: itemImage,
            ),
          ],
        ),
      ),
    );
  }
}