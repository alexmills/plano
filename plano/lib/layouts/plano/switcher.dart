/*

  Scene Switcher
  --------------

*/

import 'package:flutter/material.dart';
import 'package:plano/stores/scene.dart';
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

    return Consumer<SceneStore>(builder: (context, scene, child) {
      return Container(
        padding: EdgeInsets.fromLTRB(40, 15, 40, 10),
        child: GridView.count(
          primary: true,
          crossAxisCount: 5,
          crossAxisSpacing: 35,
          childAspectRatio: 1.7,
          children: List.generate(iconList.length, (index) {
            return Material(
              color: scene.isSelected(index)
                  ? theme.accentColor
                  : theme.primaryColorDark,
              borderRadius: BorderRadius.circular(6),
              child: InkWell(
                onTap: () {
                  scene.setNewIndex(index);
                },
                child: Icon(
                  iconList[index],
                  color: scene.isSelected(index)
                      ? theme.primaryColor
                      : theme.accentColor,
                  size: 36,
                ),
              ),
            );
          }),
        ),
      );
    });
  }
}
