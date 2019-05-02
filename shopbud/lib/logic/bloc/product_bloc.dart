import 'dart:async';

import 'package:shopbud/logic/viewmodel/product_view_model.dart';
import 'package:shopbud/model/product.dart';
import 'package:shopbud/utils/uidata.dart';

class ProductBloc {
  final ProductViewModel productViewModel = ProductViewModel();
  final productController = StreamController<List<Product>>();
  Stream<List<Product>> get productItems => productController.stream;

  ProductBloc() {
    //productViewModel.getData();
    //productController.add(productViewModel.getProducts());
    productController.add(UIData.products);
  }
}
