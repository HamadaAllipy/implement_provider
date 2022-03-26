import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/example/provider_/presentation/product_screen.dart';
import 'package:providerr/example/provider_/provider/product_provider.dart';
import 'package:providerr/example/stateful_builder/stateful_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StateFulBuilder());
  }
}
