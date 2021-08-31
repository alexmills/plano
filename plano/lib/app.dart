import 'package:flutter/material.dart';
import 'package:plano/director.dart';
import 'package:plano/stores/theme.dart';
import 'package:provider/provider.dart';

/*

  PlanoApp
  --------

  Base application

*/

class PlanoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeStore>(builder: (context, store, child) {
      return MaterialApp(
        title: "Plano",
        theme: store.theme,
        home: DirectorControl(),
      );
    });
  }
}
