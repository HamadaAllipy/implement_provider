import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:providerr/example/inherited_widget/shop_card2/models/products_models.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products = List.generate(100, (index) => ProductModel(
      name: 'product',
      id: index + 1,
      price: Random().nextInt(5000),
    ));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hamada'),
        actions: [
          Container(
            margin: const EdgeInsetsDirectional.only(
              top: 10,
              end: 20,
            ),
            child: Badge(
              badgeContent: const Text('1'),
              child: IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.shopping_cart_rounded,
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (_, i) {
            return Card(
              child: ListTile(
                title: Container(
                  margin: const EdgeInsetsDirectional.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${products[i].name} ${products[i].id}',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        '${products[i].price} EGP',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
                trailing: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                    return Checkbox(
                      onChanged: (value){
                        setState((){
                          products[i].isChecked = !products[i].isChecked;
                        });
                      },
                      value: products[i].isChecked,
                    );
                  },
                ),
              ),
            );
          }),
    );
  }
}
