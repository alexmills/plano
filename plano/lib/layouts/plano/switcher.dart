/*

  Scene Switcher
  --------------

*/

import 'package:flutter/material.dart';
import 'package:plano/stores/scene.dart';
import 'package:plano/stores/settings.dart';
import 'package:provider/provider.dart';

class SceneSwitcher extends StatelessWidget {
  final List<IconData> iconList = [
    Icons.settings_outlined,
    Icons.directions_car_outlined,
    Icons.phone_outlined,
    Icons.music_note_outlined,
    Icons.map_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Consumer2<SceneStore, SettingsStore>(
        builder: (context, scene, settings, child) {
      final controls = [
        SwitcherButton(theme, Icons.settings_outlined, scene.isSettingsScene(),
            scene.showSettingsScene),
        SwitcherButton(theme, Icons.directions_car_outlined,
            scene.isVehicleScene(), scene.showVehicleScene),
        SwitcherButton(theme, Icons.phone_outlined, scene.isTelephonyScene(),
            scene.showTelephonyScene),
        SwitcherButton(theme, Icons.music_note_outlined, scene.isAudioScene(),
            scene.showAudioScene),
        SwitcherButton(theme, Icons.map_outlined, scene.isNavigationScene(),
            scene.showNavigationScene),
      ];

      return Container(
        padding: EdgeInsets.fromLTRB(40, 15, 40, 10),
        child: GridView.count(
          primary: true,
          crossAxisCount: 5,
          crossAxisSpacing: 35,
          childAspectRatio: 1.7,
          children: (settings.isRightHandDrive)
              ? controls
              : controls.reversed.toList(),
        ),
      );
    });
  }
}

class SwitcherButton extends StatelessWidget {
  final IconData icon;
  final bool selected;
  final ThemeData theme;
  final Function action;

  SwitcherButton(this.theme, this.icon, this.selected, this.action);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected ? theme.accentColor : theme.primaryColorDark,
      borderRadius: BorderRadius.circular(6),
      child: InkWell(
        onTap: () {
          action();
        },
        child: Icon(
          icon,
          color: selected ? theme.primaryColor : theme.accentColor,
          size: 36,
        ),
      ),
    );
  }
}
