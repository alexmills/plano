import 'package:flutter/material.dart';

class ThemeStore extends ChangeNotifier {
  static ThemeData light = ThemeData(
    primaryColor: Colors.white,
    primaryColorBrightness: Brightness.light,
    accentColor: Colors.black,
    accentColorBrightness: Brightness.dark,
    primaryColorDark: Color(0xfff2f2f6),
  );

  static ThemeData dark = ThemeData(
    primaryColor: Colors.black,
    primaryColorBrightness: Brightness.dark,
    accentColor: Colors.white,
    accentColorBrightness: Brightness.light,
    primaryColorDark: Color(0xff1c1c1e),
  );

  ThemeData theme = light;

  setNightMode() {
    theme = dark;
    notifyListeners();
  }

  setDayMode() {
    theme = light;
    notifyListeners();
  }
}
