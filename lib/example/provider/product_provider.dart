import 'package:flutter/material.dart';
import 'package:providerr/example/data/models/product_model.dart';

class ProductProvider extends ChangeNotifier{

  final List<ProductModel> _products = [];
  void add(ProductModel model){
    _products.add(model);
    notifyListeners();
  }

  int get countOfProduct => _products.length;
}