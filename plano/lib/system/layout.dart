import 'package:flutter/material.dart';
import 'package:plano/system/dock.dart';
import 'package:plano/system/stage.dart';

/*

  PlanoLayout
  -----------

  This is the master layout widget for placing the main controls
  in the right locations.

*/

class PlanoLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Stage()),
          Dock(),
        ],
      ),
    );
  }
}
