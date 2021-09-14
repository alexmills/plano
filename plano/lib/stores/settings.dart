/*

  Settings Store
  --------------

*/

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const P_RHD = 'vehicle_rhd';
const P_V_LEVEL = 'volume_level';
const P_V_MUTED = 'volume_muted';

class SettingsStore extends ChangeNotifier {
  // Vehicle Settings
  late bool isRightHandDrive = true;

  // Volume Control
  late int volumeLevel = 20;
  late bool isMuted = false;

  // Preferences Storage
  late SharedPreferences preferences;

  SettingsStore() {
    print("STARTING STORE");
    setupPrefrences();
  }

  void setupPrefrences() async {
    // Load up shared preferences
    preferences = await SharedPreferences.getInstance();

    // Set as default or from storage
    isRightHandDrive = preferences.getBool(P_RHD) ?? isRightHandDrive;
    volumeLevel = preferences.getInt(P_V_LEVEL) ?? volumeLevel;
    isMuted = preferences.getBool(P_V_MUTED) ?? isMuted;
    notifyListeners();
  }

  // Global Vehicle Settings
  void setIsRightHandDrive(bool isRight) {
    isRightHandDrive = isRight;
    notifyListeners();
  }

  // Volume Control
  void unmuteSound() {
    isMuted = false;
    preferences.setBool(P_V_MUTED, isMuted);
    preferences.setInt(P_V_LEVEL, volumeLevel);
    notifyListeners();
  }

  void toggleMute() {
    isMuted = !isMuted;
    preferences.setBool(P_V_MUTED, isMuted);
    notifyListeners();
  }

  void increaseVolume() {
    print(volumeLevel);
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
