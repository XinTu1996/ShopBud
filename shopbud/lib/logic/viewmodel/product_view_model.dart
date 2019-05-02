import 'package:flutter/material.dart';
import 'package:shopbud/model/product.dart';

class ProductViewModel {
  
  List<Product> productsItems;

  ProductViewModel({this.productsItems});

  /*
  getProducts() => <Product>[
        Product(
            brand: "",
            description: "Apple",
            image: "https://cnt.gianteagle.com/api/Images/v7/products/1006549/dimensions/large/jpg",
            name: "Apple",
            price: 1.49,
            unit: "lb",
            //rating: 4.0,
            /*
            colors: [
              ProductColor(
                color: Colors.red,
                colorName: "Red",
              ),
              ProductColor(
                color: Colors.green,
                colorName: "Green",
              ),
              ProductColor(
                color: Colors.blue,
                colorName: "Blue",
              ),
              ProductColor(
                color: Colors.cyan,
                colorName: "Cyan",
              )
            ],
            */
            quantity: 0,
            status: true,
            //sizes: ["S", "M", "L", "XL"],
            //totalReviews: 170
            ),
        Product(
            brand: "Produce",
            description: "Fuji Apple",
            image: "https://cnt.gianteagle.com/api/Images/v7/products/1006549/dimensions/large/jpg",
            name: "Fuji Apple",
            price: 1.99,
            unit: "lb",
            status: true,
            //rating: 5.0,
            //totalReviews: 10
            ),
        Product(
            brand: "Produce",
            description: "Gala Apple",
            image: "https://cnt.gianteagle.com/api/Images/v7/products/1006550/dimensions/250x250_padded/jpg",
            name: "Gala Apple",
            price: 1.99,
            unit: "lb",
            status: true,
            //rating: 4.5,
            //totalReviews: 0
            ),
        Product(
            brand: "",
            description: "Bread",
            image: "https://cnt.gianteagle.com/api/Images/v7/products/1006549/dimensions/large/jpg",
            name: "Bread",
            price: 0.05,
            unit: "oz",
            status: true,
            //rating: 4.0,
            //totalReviews: 5
            ),
        Product(
            brand: "Giant Eagle",
            description: "King Size White Enriched Bread",
            image: "https://cnt.gianteagle.com/api/Images/v7/products/1011392/dimensions/large/jpg",
            name: "King Size White Enriched Bread",
            price: 0.05,
            unit: "oz",
            status: false,
            //rating: 4.8,
            //totalReviews: 12
            ),
        Product(
            brand: "Schwebel's",
            description: "Giant bread",
            image: "https://cnt.gianteagle.com/api/Images/v7/products/641880/dimensions/large/jpg",
            name: "Giant bread",
            price: 0.14,
            unit: "oz",
            status: true,
            //rating: 4.2,
            //totalReviews: 28
            ),
        /*
        Product(
            brand: "YOURTURN",
            description: "Watch in budget",
            image:
                "https://mosaic02.ztat.net/vgs/media/packshot/pdp-zoom/YO/15/2M/00/6Q/11/YO152M006-Q11@6.jpg",
            name: "Watch",
            price: "£11.99",
            rating: 4.7,
            totalReviews: 120),
        Product(
            brand: "Vero Moda",
            description: "Day dress - black/off",
            image:
                "https://mosaic01.ztat.net/vgs/media/pdp-zoom/VE/12/1C/1B/RQ/11/VE121C1BR-Q11@15.jpg",
            name: "VMKANA",
            price: "£26.59",
            rating: 4.0,
            totalReviews: 33),
        Product(
            brand: "ONLY",
            description: "A-line skirt",
            image:
                "https://mosaic01.ztat.net/vgs/media/pdp-zoom/ON/32/1B/0B/JG/11/ON321B0BJ-G11@8.jpg",
            name: "ONLTHAI FRILL",
            price: "£25.59",
            rating: 4.4,
            totalReviews: 44),
        Product(
            brand: "MAI PIÙ SENZA",
            description: "Awesome Heels",
            image:
                "https://mosaic01.ztat.net/vgs/media/pdp-zoom/M6/61/1B/02/9A/11/M6611B029-A11@13.jpg",
            name: "HIGH HEELS",
            price: "£59.99",
            rating: 4.1,
            totalReviews: 22),
            */
      ];
      */
}
