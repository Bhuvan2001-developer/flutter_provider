import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/imgprovider.dart';

class text with ChangeNotifier {
  int _rollnumber = 8;
  int get nam => _rollnumber;

  // ignore: non_constant_identifier_names
  Names() {
    _rollnumber++;
    notifyListeners();
  }
}
