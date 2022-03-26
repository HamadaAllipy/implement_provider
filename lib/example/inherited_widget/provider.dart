import 'package:flutter/material.dart';

class Provider extends InheritedWidget {

  int counter = 0;
   Provider({Key? key, required Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return oldWidget.counter != counter;
  }

  static Provider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }
}
