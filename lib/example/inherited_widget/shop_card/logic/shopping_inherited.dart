import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:providerr/example/inherited_widget/shop_card/data/models/product_model.dart';


class ShoppingInherited extends InheritedWidget {
  final Widget child;

  List<ProductModel> productsSelected = [];

  ShoppingInherited({
    Key? key,
    required this.child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(ShoppingInherited oldWidget) {
    Function eq = const ListEquality().equals;
    return !eq(
      productsSelected,
      oldWidget.productsSelected
    );
  }

  static ShoppingInherited? of(BuildContext context)=> context.dependOnInheritedWidgetOfExactType();
}
