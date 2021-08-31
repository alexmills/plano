/*

  SceneStore
  ----------

*/

import 'package:flutter/material.dart';

class SceneStore extends ChangeNotifier {
  // Start with navigation present
  int index = 4;
  List<bool> selectedTab = generateSelectedTab(4);

  bool isSelected(int test_index) {
    return test_index == index;
  }

  void setNewIndex(int new_index) {
    index = new_index;
    selectedTab = generateSelectedTab(new_index);
    notifyListeners();
  }

  static List<bool> generateSelectedTab(int index) {
    return List.generate(5, (i) => i == index ? true : false);
  }
}
