/*

  Scene Switcher
  --------------

*/

import 'package:flutter/material.dart';
import 'package:plano/system/stores/scene.dart';
import 'package:provider/provider.dart';

class SceneSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scene = context.read<SceneStore>();

    return Container(
      width: 620,
      color: Colors.lightGreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(onPressed: scene.showSettings, child: Text('Settings')),
          TextButton(onPressed: scene.showVehicle, child: Text('Vehicle')),
          TextButton(onPressed: scene.showTelephony, child: Text('Telephony')),
          TextButton(onPressed: scene.showAudio, child: Text('Audio')),
          TextButton(onPressed: scene.showNavigation, child: Text('Navigation'))
        ],
      ),
    );
  }
}
