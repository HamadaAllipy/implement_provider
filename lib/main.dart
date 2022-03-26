import 'package:flutter/material.dart';
import 'package:providerr/example/inherited_widget/homeScreen.dart';
import 'package:providerr/example/inherited_widget/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
