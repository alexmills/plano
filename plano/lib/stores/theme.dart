import 'package:flutter/material.dart';

class ThemeStore extends ChangeNotifier {
  static TextTheme text = TextTheme(
    // Dock Time
    headline5: TextStyle(
        fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
    // Dock Date
    headline6: TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white70),
  );

  static ThemeData light = ThemeData(
    primaryColor: Colors.white,
    primaryColorBrightness: Brightness.light,
    accentColor: Colors.black,
    accentColorBrightness: Brightness.dark,
    primaryColorDark: Color(0xfff2f2f6),
    textTheme: text,
  );

  static ThemeData dark = ThemeData(
    primaryColor: Colors.black,
    primaryColorBrightness: Brightness.dark,
    accentColor: Colors.white,
    accentColorBrightness: Brightness.light,
    primaryColorDark: Color(0xff1c1c1e),
    textTheme: text,
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
