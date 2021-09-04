/*

  Settings Store
  --------------

*/

import 'package:flutter/material.dart';

class SettingsStore extends ChangeNotifier {
  bool isRightHandDrive = true;

  // Volume Control
  int volumeLevel = 20;
  bool isMuted = false;

  void setIsRightHandDrive(bool isRight) {
    isRightHandDrive = isRight;
    notifyListeners();
  }

  // Volume Control
  void muteSound() {
    isMuted = true;
    notifyListeners();
  }

  void unmuteSound() {
    isMuted = false;
    notifyListeners();
  }

  void toggleMule() {
    isMuted = !isMuted;
    notifyListeners();
  }

  void increaseVolume() {
    if (volumeLevel < 30) {
      volumeLevel++;
    }
    unmuteSound();
  }

  void decreaseVolume() {
    if (volumeLevel > 0) {
      volumeLevel--;
    }
    unmuteSound();
  }
}
