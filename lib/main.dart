import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:providerr/example/bloc_example/app_bloc_observer.dart';
import 'package:providerr/example/bloc_example/bloc/counter_bloc.dart';
import 'package:providerr/example/bloc_example/presentation/home_bloc_screen.dart';
import 'package:providerr/example/inherited_widget/shop_card/logic/shopping_inherited.dart';
import 'package:providerr/example/inherited_widget/shop_card2/home_screen2.dart';

import 'example/inherited_widget/shop_card/presentation/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(
        () => runApp(const MyApp()),
    blocObserver: AppBlocObserver(),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context)=> CounterBloc(),
        child: const HomeBlocScreen(),
      ),
    );
  }
}
