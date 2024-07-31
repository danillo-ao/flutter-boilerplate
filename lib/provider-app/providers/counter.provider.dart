import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier {
  // states
  int _count = 0;

  // get function to return some state
  int get count => _count;

  // change state
  void increment() {
    _count++;
    notifyListeners();
  }

  // change state
  void decrement() {
    _count--;
    notifyListeners();
  }
}
