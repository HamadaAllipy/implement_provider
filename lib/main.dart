import 'package:flutter/material.dart';
import 'package:providerr/example/inherited_widget/shop_card/logic/shopping_inherited.dart';
import 'package:providerr/example/inherited_widget/shop_card2/home_screen2.dart';

import 'example/inherited_widget/shop_card/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShoppingInherited(
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
