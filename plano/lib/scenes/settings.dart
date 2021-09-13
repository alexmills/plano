/*

  Settings Scene
  --------------

*/

import 'package:flutter/material.dart';
import 'package:plano/widgets/detail.dart';
import 'package:plano/widgets/source.dart';
import 'package:plano/widgets/split.dart';

class SettingsScene extends StatefulWidget {
  @override
  _SettingsScene createState() => _SettingsScene();
}

class _SettingsScene extends State<SettingsScene> {
  int _index = 0;

  setIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SplitViewWidget(
      source: SourceWidget(
        title: "Settings",
        children: [
          SourceButton(
            icon: Icons.bluetooth,
            label: "Bluetooth",
            theme: theme,
            selected: _index == 0,
            action: () {
              setIndex(0);
            },
          ),
          SourceButton(
            icon: Icons.info_outline,
            label: "About",
            theme: theme,
            selected: _index == 1,
            action: () {
              setIndex(1);
            },
          ),
        ],
      ),
      detail: Container(
        color: Colors.white,
        child: IndexedStack(
          index: _index,
          children: [
            DetailWidget(
              child: Text("Bluetooth", style: theme.textTheme.headline1),
            ),
            DetailWidget(
              child: Text("About", style: theme.textTheme.headline1),
            ),
          ],
        ),
      ),
    );
  }
}
