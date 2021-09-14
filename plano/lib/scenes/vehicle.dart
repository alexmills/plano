/*

  Vehicle Scene
  -------------

*/

import 'package:flutter/material.dart';
import 'package:plano/widgets/detail.dart';
import 'package:plano/widgets/source.dart';
import 'package:plano/widgets/split.dart';

class VehicleScene extends StatefulWidget {
  @override
  _VehicleScene createState() => _VehicleScene();
}

class _VehicleScene extends State<VehicleScene> {
  // Selected Tab
  int _index = 0;

  setIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplitViewWidget(
        source: SourceWidget(
          title: "Vehicle",
          children: [
            SourceButton(
              icon: Icons.speed_outlined,
              label: "Gauges",
              selected: _index == 0,
              action: () {
                setIndex(0);
              },
            ),
            SourceButton(
              icon: Icons.multiline_chart_outlined,
              label: "TPMS",
              selected: _index == 1,
              action: () {
                setIndex(1);
              },
            ),
          ],
        ),
        detail: IndexedStack(
          index: _index,
          children: [
            DetailWidget(
              child: Text("Gauges"),
            ),
            DetailWidget(
              child: Text("Tire Pressure"),
            ),
          ],
        ));
  }
}
