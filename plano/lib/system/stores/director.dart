import 'package:flutter/material.dart';

/*

  DirectorStore
  -------------

  Global state for the DirectorControl, which displays
  the master app layout or screens like sleep or cameras.

*/

class DirectorStore extends ChangeNotifier {
  int index = 0;

  /* Default layout is master */

  void showMasterLayout() {
    index = 0;
    notifyListeners();
  }

  /* Reverse Camera Control */

  void showCameraLayout() {
    index = 1;
    notifyListeners();
  }

  void hideCameraLayout() {
    showMasterLayout();
  }

  /* Sleep/Wake Layout Control */

  void showSleepLayout() {
    index = 2;
    notifyListeners();
  }

  void hideSleepLayout() {
    showMasterLayout();
  }
}
