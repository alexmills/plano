/*

  SceneStore
  ----------

*/

import 'package:flutter/material.dart';

class SceneStore extends ChangeNotifier {
  int index = 0;

  bool get navigationActive => index == 0;

  void showNavigation() {
    index = 0;
    notifyListeners();
  }

  bool get audioActive => index == 1;

  void showAudio() {
    index = 1;
    notifyListeners();
  }

  bool get telephonyActive => index == 2;

  void showTelephony() {
    index = 2;
    notifyListeners();
  }

  bool get vehicleActive => index == 3;

  void showVehicle() {
    index = 3;
    notifyListeners();
  }

  bool get settingsActive => index == 4;

  void showSettings() {
    index = 4;
    notifyListeners();
  }
}
