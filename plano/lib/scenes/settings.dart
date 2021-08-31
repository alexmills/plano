/*

  Settings Scene
  --------------

*/

import 'package:flutter/material.dart';
import 'package:plano/stores/theme.dart';
import 'package:provider/provider.dart';

class SettingsScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeStore>(builder: (context, store, child) {
      return Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Settings"),
              TextButton(
                onPressed: store.setDayMode,
                child: Text("Day Mode"),
              ),
              TextButton(
                onPressed: store.setNightMode,
                child: Text("Night Mode"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
