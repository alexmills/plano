/*

  Scene Switcher
  --------------

*/

import 'package:flutter/material.dart';
import 'package:plano/system/stores/scene.dart';
import 'package:provider/provider.dart';

class SceneSwitcher extends StatelessWidget {
  List<IconData> iconList = [
    Icons.settings_outlined,
    Icons.directions_car_outlined,
    Icons.phone_outlined,
    Icons.music_note_outlined,
    Icons.map_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<SceneStore>(builder: (context, scene, child) {
      return Container(
        width: 620,
        padding: EdgeInsets.fromLTRB(40, 20, 40, 0),
        color: Colors.lightGreen,
        child: GridView.count(
          primary: true,
          crossAxisCount: 5,
          crossAxisSpacing: 35,
          childAspectRatio: 1.35,
          children: List.generate(iconList.length, (index) {
            return Material(
              color: (index == scene.index) ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(6),
              child: InkWell(
                onTap: () {
                  scene.setNewIndex(index);
                },
                child: Icon(
                  iconList[index],
                  color: (index == scene.index) ? Colors.white : Colors.black,
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
