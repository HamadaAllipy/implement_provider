import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/providers/model.dart';
import 'package:providerr/providers/provider_three.dart';
import 'package:providerr/providers/provider_two.dart';
import 'package:providerr/test_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Model(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProviderTwo(),
        ),
        Provider(
          create: (context) => ProviderThree(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TestOne(),
      ),
    );
  }
}
