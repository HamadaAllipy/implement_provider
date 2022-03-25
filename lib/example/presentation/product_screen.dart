import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/example/data/models/product_model.dart';
import 'package:providerr/example/presentation/checkout_screen.dart';
import 'package:providerr/example/provider/product_provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<ProductModel> products = [
    ProductModel('bmw', 50),
    ProductModel('mercedes', 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CheckOutScreen()));
            },
            icon: const Icon(
              Icons.add_shopping_cart,
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                context.watch<ProductProvider>().getTotal.toString(),
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8,),
        itemCount: products.length,
        itemBuilder: (_, index) {
          return Card(
            child: ListTile(
              title: Text(
                products[index].name,
              ),
              trailing: Consumer<ProductProvider>(
                builder: (context, provider, child){
                  return IconButton(
                    onPressed: (){
                      provider.add(products[index]);
                    },
                    icon: const Icon(Icons.add,),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
