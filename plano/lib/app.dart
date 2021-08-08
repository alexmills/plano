import 'package:flutter/material.dart';
import 'package:plano/system/curtain.dart';
import 'package:plano/system/layout.dart';
import 'package:plano/system/stores/curtain.dart';
import 'package:provider/provider.dart';

/*

  PlanoApp
  --------

  Base application

*/

class PlanoApp extends StatelessWidget {
  final theme = ThemeData(
    primaryColor: Colors.white,
    primaryColorBrightness: Brightness.light,
    accentColor: Colors.black,
    accentColorBrightness: Brightness.dark,
    primaryColorDark: Color(0xfff2f2f6),
  );

  final theme_dark = ThemeData(
    primaryColor: Colors.black,
    primaryColorBrightness: Brightness.dark,
    accentColor: Colors.white,
    accentColorBrightness: Brightness.light,
    primaryColorDark: Color(0xff1c1c1e),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plano",
      theme: theme,
      home: CurtainControl(),
    );
  }
}

/*

  CurtainControl
  --------------

  This widget controls the visibility of the sleep/lock screen when the 
  vehicle is powered on and off. Otherwise the main layout is displayed.

*/

class CurtainControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        child: Consumer<CurtainStore>(
          builder: (context, curtain, child) {
            return IndexedStack(
              index: curtain.index,
              children: [
                CurtainWidget(),
                PlanoLayout(),
              ],
            );
          },
        ),
      ),
    );
  }
}
