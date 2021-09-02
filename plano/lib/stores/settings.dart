/*

  Settings Store
  --------------

*/

import 'package:flutter/material.dart';

class SettingsStore extends ChangeNotifier {
  bool isRightHandDrive = true;

  void setIsRightHandDrive(bool isRight) {
    isRightHandDrive = isRight;
    notifyListeners();
  }
}
