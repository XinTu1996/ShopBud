import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shopbud/model/store.dart';
import 'package:shopbud/logic/bloc/product_bloc.dart';
import 'package:shopbud/model/product.dart';
import 'package:shopbud/common_ui/common_scaffold.dart';
import 'package:shopbud/logic/bloc/store_bloc.dart';

class promotion_page extends StatefulWidget {

  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<promotion_page> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext _context;
  int q = 1;

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
                      border: InputBorder.none, hintText: "Select Store"),
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

  //stack1
  Widget imageStack(String img) => Image.network(
    img,
    fit: BoxFit.cover,
  );

  //stack2
  Widget descStack(Store store) => Positioned(
    bottom: 0.0,
    left: 0.0,
    right: 0.0,
    child: Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Text(
              store.name,
              softWrap: true,
              overflow: TextOverflow.clip,
              style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

            )
          ],
        ),
      ),
    ),
  );


  Widget storeGrid(List<Store> stores) => GridView.count(
    crossAxisCount: MediaQuery.of(_context).orientation == Orientation.portrait ? 1 : 3,
    shrinkWrap: true,
    children: stores
        .map((store) => Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: InkWell(
        splashColor: Colors.yellow,

        child: Material(
          clipBehavior: Clip.antiAlias,
          elevation: 2.0,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              imageStack(store.image),
              descStack(store),
            ],
          ),
        ),
      ),
    ))
        .toList(),
  );

  Widget bodyData() {
    StoreBloc storeBloc = StoreBloc();
    return StreamBuilder<List<Store>>(
        stream: storeBloc.storeItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? storeGrid(snapshot.data)
              : Center(child: CircularProgressIndicator());
        });
  }



  @override
  Widget build(BuildContext context) {
    _context = context;

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: Text("Store Promotions"),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            searchCard(),
            Container(
              //height: MediaQuery.of(context).size.height - 230,
              child: bodyData(),
            )
          ],
        ),
      ),
    );
  }



}
