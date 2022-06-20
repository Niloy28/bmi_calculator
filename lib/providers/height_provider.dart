import 'package:flutter/material.dart';

class Height with ChangeNotifier {
  double _height = 120;

  int get height => _height.round();

  void increment() {
    _height = (++_height).clamp(80, 200);
    notifyListeners();
  }

  void decrement() {
    _height = (--_height).clamp(80, 200);
    notifyListeners();
  }

  void setHeight(double newHeight) {
    _height = newHeight;
    notifyListeners();
  }
}
