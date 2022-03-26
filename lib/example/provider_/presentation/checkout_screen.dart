import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/example/provider_/provider/product_provider.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<ProductProvider>(
        builder: (context, provider, child){
          return ListView.builder(
            itemCount: provider.getProductsSelected.length,
            itemBuilder: (_, index) => Card(
              child: ListTile(
                title: Text(
                  provider.getProductsSelected[index].name,
                ),
                trailing: Consumer<ProductProvider>(
                  builder: (context, provider, child){
                    return IconButton(
                      onPressed: (){
                        provider.removeProduct(provider.getProductsSelected[index]);
                      },
                      icon: const Icon(Icons.remove,),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
