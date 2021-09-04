/*

  Dock
  ----

  Persistant container at bottom of the display. Contains the clock, now playing
  and the scene switcher.

*/

import 'package:flutter/material.dart';
import 'package:plano/layouts/plano/tray.dart';
import 'package:plano/layouts/plano/volume.dart';
import 'package:plano/layouts/plano/switcher.dart';
import 'package:plano/stores/settings.dart';
import 'package:provider/provider.dart';

class Dock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsStore>(builder: (context, settings, child) {
      final widgets = [
        VolumeControl(),
        Expanded(child: SceneSwitcher()),
        Tray(),
      ];

      return Container(
        color: Theme.of(context).primaryColor,
        height: 100,
        child: Row(
          children:
              (settings.isRightHandDrive) ? widgets : widgets.reversed.toList(),
        ),
      );
    });
  }
}
