import 'package:flutter/material.dart';
import 'package:plano/system/stores/curtain.dart';
import 'package:provider/provider.dart';

/*

  PlanoLayout
  -----------

  This is the master layout widget for placing the main controls
  in the right locations.

*/

class PlanoLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Plano Layout"),
        TextButton(
          onPressed: () {
            var curtain = context.read<CurtainStore>();
            curtain.showCurtain();
          },
          child: Text('Show Curtains'),
        )
      ],
    );
  }
}
