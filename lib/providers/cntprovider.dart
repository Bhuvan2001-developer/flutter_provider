import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Count with ChangeNotifier {
  int _cnt = 0;
  int get count => _cnt;

  addition() {
    _cnt++;
    notifyListeners();
  }

  reset() {
    _cnt = 0;
    notifyListeners();
  }
}
