import 'package:flutter/material.dart';

class ThemeStore extends ChangeNotifier {
  static TextTheme text = TextTheme(
    // Source/Detail Title
    headline1: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    // Dock Time
    headline5: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    // Dock Date
    headline6: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white70,
    ),
    // Generic Themed Buttons
    button: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),
  );

  static ThemeData light = ThemeData(
    // Source View
    primaryColorLight: Color(0xFFECEFF1),
    // Text / Active Buttons
    primaryColor: Color(0xFF37474F),

    // Old...
    primaryColorBrightness: Brightness.light,
    accentColor: Colors.black,
    accentColorBrightness: Brightness.dark,
    primaryColorDark: Color(0xfff2f2f6),

    // Text Styling
    textTheme: text,
    // Dock
    bottomAppBarColor: Color(0xFF263238),
  );

  static ThemeData dark = light.copyWith(
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
