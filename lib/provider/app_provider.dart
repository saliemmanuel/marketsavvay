import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  int _topIndex = 0;

  int get topIndex => _topIndex;

  changeIndex({int? value}) {
    _topIndex = value!;
    notifyListeners();
  }
}
