/*
Nguyen Duc Hoang (Mr)
Programming tutorial channel:
https://www.youtube.com/c/nguyenduchoang
Flutter, React, React Native, IOS development, Swift, Python, Angular
Build a ListView with images and text in FLutter
* */
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'storePromoData.dart';

class storePromoListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListViewExampleState();
  }
}
class ListViewExampleState extends State<storePromoListView> {
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
                      border: InputBorder.none, hintText: "Search Store"),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Search"),
              ),
            ],
          ),
        ),
      ),
    ),
  );

  List<Container> _buildListItemsFromStorePromos(){
    int index = 0;
    return storePromos.map((storePromo){
      var container = Container(
        decoration: index % 2 == 0?
        new BoxDecoration(
            color: Colors.lightGreen[50]
          //color: const Color(0xFF7ec0ee)
        ):
        //new BoxDecoration(color: const Color(0xFFb0e0e6)):
        new BoxDecoration(
          color: Colors.lightGreen[50]
            //color: const Color(0xFF7ec0ee)
        ),
        child: new Row(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.all(10.0),
              child: new CachedNetworkImage(
                imageUrl: storePromo.imageURL,
                width: 200.0,
                height: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: new Text(
                    storePromo.storeName,
                    style: new TextStyle(
                        fontWeight:  FontWeight.bold,
                        fontSize: 17.0,
                        color: Colors.black
                    ),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: new Text(
                    storePromo.prodName,
                    style: new TextStyle(
                        fontWeight:  FontWeight.normal,
                        fontSize: 15.0,
                        color: Colors.black
                    ),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: new Text(
                    storePromo.promoDesc,
                    style: new TextStyle(
                        fontWeight:  FontWeight.normal,
                        fontSize: 15.0,
                        color: Colors.black
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );

      return container;
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.lightGreen[50],
        appBar: AppBar(
          title: Text("Store Promos"),
          backgroundColor: Colors.black87,
        ),

        body: new ListView(
          children: _buildListItemsFromStorePromos(),

        )

    );
  }
}
