/*

  Now Playing
  -----------

*/

import 'package:flutter/material.dart';

class NowPlaying extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.brown,
      child: Center(
        child: Text("Now Playing"),
      ),
    );
  }
}
