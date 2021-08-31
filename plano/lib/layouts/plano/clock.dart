/*

  Clock
  -----

*/

import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.amber,
      child: Center(
        child: Text("Tray Clock"),
      ),
    );
  }
}
