import 'dart:async';

import 'package:shopbud/logic/viewmodel/product_view_model.dart';
import 'package:shopbud/model/product.dart';
import 'package:shopbud/utils/uidata.dart';

class ProductBloc {
  final ProductViewModel productViewModel = ProductViewModel();
  final productController = StreamController<List<Product>>();
  Stream<List<Product>> get productItems => productController.stream;

  ProductBloc(int page) {
    //productViewModel.getData();
    //productController.add(productViewModel.getProducts());
    page == 1 ? productController.add(UIData.products1) : productController.add(UIData.products2);
  }
}
