import 'package:flutter/material.dart';
import 'package:providerr/example/data/models/product_model.dart';

class ProductProvider extends ChangeNotifier{

  final List<ProductModel> _products = [];

  int _total = 0;
  void add(ProductModel model){
    _products.add(model);
    _total += model.price;
    notifyListeners();
  }

  int get getTotal=> _total;
  int get countOfProduct => _products.length;
  List<ProductModel> get getProductsSelected => _products;

  void removeProduct(ProductModel productsSelected) {
    _products.remove(productsSelected);
    _total -= productsSelected.price;
    notifyListeners();
  }
}