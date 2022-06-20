import 'package:flutter/material.dart';

class Sex with ChangeNotifier {
  List<bool> _sexList = [true, false];

  List<bool> get sexList => _sexList;

  void _setMale() {
    _sexList = [true, false];
    notifyListeners();
  }

  void _setFemale() {
    _sexList = [false, true];
    notifyListeners();
  }

  void setSex(int sexIndex) {
    if (sexIndex == 0) {
      _setMale();
    } else {
      _setFemale();
    }
  }
}
