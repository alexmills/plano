import 'package:flutter/material.dart';

/*

  CurtainStore
  ------------

  This class is the global state for the curtain control

*/

class CurtainStore extends ChangeNotifier {
  int index = 1;

  void showCurtain() {
    index = 0;
    notifyListeners();
  }

  void hideCurtain() {
    index = 1;
    notifyListeners();
  }
}
