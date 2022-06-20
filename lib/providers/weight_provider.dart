import 'package:flutter/material.dart';

class Weight with ChangeNotifier {
  int _weight = 60;

  int get weight => _weight;

  void increment() {
    _weight = (++_weight).clamp(20, 100);
    notifyListeners();
  }

  void decrement() {
    _weight = (--_weight).clamp(20, 100);
    notifyListeners();
  }
}
