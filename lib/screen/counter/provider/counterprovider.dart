import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int i = 0;

  void increment() {
    i++;
    notifyListeners();
  }

  void decrement() {
    i--;
    notifyListeners();
  }

  void multiple2() {
    i = i * 2;
    notifyListeners();
  }

  void multiple3() {
    i = i * 3;
    notifyListeners();
  }

  void multiple4() {
    i = i * 4;
    notifyListeners();
  }

  void reset()
  {
    i=0;
    notifyListeners();
  }
}
