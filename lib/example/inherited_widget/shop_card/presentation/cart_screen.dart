import 'package:flutter/material.dart';
import 'package:providerr/example/inherited_widget/shop_card/logic/shopping_inherited.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShoppingInherited? inherited = ShoppingInherited.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cart',
        ),
      ),
      body: Center(
        child: Text(
          '${inherited!.productsSelected.length} Selected',
        ),
      ),
    );
  }
}
