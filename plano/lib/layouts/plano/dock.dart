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

class Dock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 100,
      child: Row(
        children: [
          Clock(),
          Expanded(child: NowPlaying()),
          SceneSwitcher(),
        ],
      ),
    );
  }
}
