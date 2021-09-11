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
        padding: EdgeInsets.symmetric(horizontal: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              settings.isRightHandDrive ? controls : controls.reversed.toList(),
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
    final border = BorderRadius.circular(6);
    return Container(
      height: 60,
      width: 80,
      child: Material(
        color: selected ? Colors.white : theme.bottomAppBarColor,
        borderRadius: border,
        child: InkWell(
          borderRadius: border,
          onTap: () {
            action();
          },
          child: Icon(
            icon,
            color: selected ? theme.bottomAppBarColor : Colors.white,
            size: 36,
          ),
        ),
      ),
    );
  }
}
