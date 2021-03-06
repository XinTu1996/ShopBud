import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:numberpicker/numberpicker.dart';

import 'package:shopbud/logic/bloc/product_bloc.dart';
import 'package:shopbud/model/product.dart';
import 'package:shopbud/common_ui/common_scaffold.dart';

class ProductsPage extends StatefulWidget {

  @override
  _ProductsPageState createState() => _ProductsPageState();

}

class _ProductsPageState extends State<ProductsPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext _context;
  int q = 1;
  ProductBloc productBloc = ProductBloc(1);
  Stream<List<Product>> _stream;


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
                      border: InputBorder.none, hintText: "Find your product"),
                ),
              ),
              FlatButton(
                onPressed: () {

                },
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
  Widget descStack(Product product) => Positioned(
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
            /*
            Expanded(
              child: Text(
                product.brand + " " + product.name,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
            ),
            */
            Text(
              // product.brand == "" ? product.name : product.brand + " " + product.name,
              product.name,
              softWrap: true,
              overflow: TextOverflow.clip,
              style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("\$" + product.price.toString(),
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal)),
                SizedBox(
                  width: 20.0,
                ),

                /*FittedBox(
                  child: CupertinoButton(
                    minSize: 10,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 12.0,
                    ),
                    onPressed: () => _showQuantityDialog(_context),
                    borderRadius: BorderRadius.circular(8.0),
                    child:
                    Text(
                      "Add to list",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: CupertinoColors.activeBlue, fontSize: 12),
                    ),
                    color: Colors.white,
                  ),
                ),*/
              ],
            )
          ],
        ),
      ),
    ),
  );

  //stack3
  Widget stockStack(bool status) => Positioned(
    top: 0.0,
    left: 0.0,
    child: Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0))),
      child: Row(
        children: <Widget>[
          status ?
          Icon(
            Icons.check,
            color: Colors.green,
            size: 10.0,
          )
              : Icon(
            Icons.clear,
            color: Colors.red,
            size: 10.0,
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(
            status ? "In-stock" : "Out-of-stock",
            style: TextStyle(color: Colors.white, fontSize: 10.0),
          )
        ],
      ),
    ),
  );

  Widget productGrid(List<Product> products) => GridView.count(
    crossAxisCount: MediaQuery.of(_context).orientation == Orientation.portrait ? 2 : 3,
    shrinkWrap: true,
    children: products
        .map((product) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.yellow,
        //onDoubleTap: () => showSnackBar(),
        child: Material(
          clipBehavior: Clip.antiAlias,
          elevation: 2.0,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              imageStack(product.image),
              descStack(product),
              stockStack(product.status),
            ],
          ),
        ),
      ),
    ))
        .toList(),
  );

  Widget bodyData() {
    _stream = productBloc.productItems;
    return StreamBuilder<List<Product>>(
        stream: _stream, //productBloc.productItems,
        builder: (context, snapshot) {
          return snapshot.hasData
              ? productGrid(snapshot.data)
              : Center(child: CircularProgressIndicator());
        });
  }

  void showSnackBar() {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(
        "Added to cart.",
      ),
      /*
      action: SnackBarAction(
        label: "Undo",
        onPressed: () {},
      ),
      */
    ));
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    /*
    return CommonScaffold(
      scaffoldKey: scaffoldKey,
      appTitle: "Products",
      showDrawer: true,
      showFAB: false,
      actionFirstIcon: Icons.shopping_cart,
      bodyData: SingleChildScrollView(
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
    */

    return Scaffold(
      backgroundColor: Colors.lightGreen[50],
      appBar: AppBar(
        title: Text("Pandas"),
        backgroundColor: Colors.black87,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            searchCard(),
              new Container(
                child: Row(
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {},
                        textColor: Colors.blue,
                        padding: const EdgeInsets.all(0.0),
                        color: Colors.white,

                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Request'),

                        ),
                      ),

                      RaisedButton(
                        onPressed: () {},
                        textColor: Colors.blue,
                        padding: const EdgeInsets.all(0.0),
                        color: Colors.white,


                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Promotions'),

                        ),
                      ),
                    ]
                )

          ),
            Container(
              //height: MediaQuery.of(context).size.height - 230,
              child: bodyData(),
            )
          ],
        ),
      ),



    );

  }

  void _showQuantityDialog(BuildContext context) {
    showDialog<int>(
        context: context,
        builder: (BuildContext context) {
          return new NumberPickerDialog.integer(
            minValue: 1,
            maxValue: 10,
            title: new Text("Pick a new price"),
            initialIntegerValue: q,
          );
        }
    ).then((int value) {
      if (value != null) {
        showSnackBar();
      }
    });
  }

}
