import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:providerr/example/inherited_widget/shop_card/data/models/product_model.dart';
import 'package:providerr/example/inherited_widget/shop_card/logic/shopping_inherited.dart';
import 'package:providerr/example/inherited_widget/shop_card/presentation/cart_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    ShoppingInherited? inherited = ShoppingInherited.of(context);
    final List<ProductModel> products = List.generate(100, (index) => ProductModel(
      name: 'product',
      price: Random().nextInt(5000),
    ));
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Shopping cart',
            ),
            actions: [
              Container(
                margin: const EdgeInsetsDirectional.only(
                  top: 10,
                  end: 10,
                ),
                child: Badge(
                  badgeContent: Text(
                    '${inherited!.productsSelected.length}',
                  ),
                  badgeColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.shopping_cart_rounded,),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const CartScreen()));
                    },
                  ),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemBuilder: (context, index) => _itemCard(
                context: context,
                productModel: products[index],
                setState: setState,
                inherited: inherited
              ),
              itemCount: products.length,
              itemExtent: 100,
            ),
          ),
        );
      },
    );
  }

  Widget _itemCard({
    required BuildContext context,
    required ProductModel productModel,
    required StateSetter setState,
    required ShoppingInherited inherited,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  productModel.name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  '${productModel.price} EGP',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.grey,
                      ),
                ),
              ],
            ),
            Checkbox(
              value: productModel.isCheck,
              onChanged: (value) {
                setState((){
                  productModel.isCheck = !productModel.isCheck;
                  if(value as bool){
                    inherited.productsSelected.add(productModel);
                  }
                  else{
                    inherited.productsSelected.remove(productModel);
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
