import 'package:flutter/material.dart';

class Age with ChangeNotifier {
  int _age = 25;

  int get age => _age;

  void increment() {
    _age = (++_age).clamp(15, 85);
    notifyListeners();
  }

  void decrement() {
    _age = (--_age).clamp(15, 85);
    notifyListeners();
  }
}
