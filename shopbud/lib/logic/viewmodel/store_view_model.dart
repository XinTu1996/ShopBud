import 'package:flutter/material.dart';
import 'package:shopbud/model/store.dart';

class StoreViewModel {

  List<Store> storeItems;

  StoreViewModel({this.storeItems});

  getStores() => <Store>[
    Store("1", "Panda", "https://www.google.com/maps/place/Panda+Supermarket/@40.4379203,-79.9232951,17z/data=!3m1!4b1!4m5!3m4!1s0x8834f20024276b31:0x36b95694659680c3!8m2!3d40.4379203!4d-79.9211064", "https://s3-media2.fl.yelpcdn.com/bphoto/AT2sTiYKAs56kAQx_W2_3A/ls.jpg"),

    Store("2","Lotus","test","https://s3-media1.fl.yelpcdn.com/bphoto/XUCFdfGcNsCK2vufoB4AGQ/348s.jpg"),

    Store("3","Bombay Mart","064","https://s3-media2.fl.yelpcdn.com/bphoto/AT2sTiYKAs56kAQx_W2_3A/ls.jpg"),
  /*
  ),
    Store(
      id: "4",
      name: "Seoul Mart",
      location:"https://www.google.com/maps/place/Panda+Supermarket/@40.4379203,-79.9232951,17z/data=!3m1!4b1!4m5!3m4!1s0x8834f20024276b31:0x36b95694659680c3!8m2!3d40.4379203!4d-79.9211064",
      image: "https://s3-media2.fl.yelpcdn.com/bphoto/AT2sTiYKAs56kAQx_W2_3A/ls.jpg",
    ),*/

  ];
}
