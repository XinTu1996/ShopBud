import 'dart:async';

import 'package:shopbud/logic/viewmodel/store_view_model.dart';
import 'package:shopbud/model/store.dart';

class StoreBloc {
  final StoreViewModel storeViewModel = StoreViewModel();
  final StoreController = StreamController<List<Store>>();
  Stream<List<Store>> get storeItems => StoreController.stream;

  StoreBloc() {
    StoreController.add(storeViewModel.getStores());
  }
}