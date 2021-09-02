/*

  Dock
  ----

  Persistant container at bottom of the display. Contains the clock, now playing
  and the scene switcher.

*/

import 'package:flutter/material.dart';
import 'package:plano/layouts/plano/clock.dart';
import 'package:plano/layouts/plano/nowplaying.dart';
import 'package:plano/layouts/plano/switcher.dart';
import 'package:plano/stores/settings.dart';
import 'package:provider/provider.dart';

class Dock extends StatelessWidget {
  final widgets = [
    Clock(),
    Expanded(child: SceneSwitcher()),
    NowPlaying(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsStore>(builder: (context, settings, child) {
      return Container(
        color: Theme.of(context).primaryColor,
        height: 100,
        child: Row(
          children:
              (settings.isRightHandDrive) ? widgets.reversed.toList() : widgets,
        ),
      );
    });
  }
}
