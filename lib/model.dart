import 'package:flutter/material.dart';

class Model extends ChangeNotifier{

  String name = 'your name';
  int age = 0;

  changeName(){
    name = 'hamada';
    notifyListeners();
  }

  changeAge(){
    age = 22;
    notifyListeners();
  }
}