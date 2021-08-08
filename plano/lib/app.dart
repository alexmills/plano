import 'package:flutter/material.dart';
import 'package:plano/system/curtain.dart';
import 'package:plano/system/layout.dart';
import 'package:plano/system/stores/curtain.dart';
import 'package:provider/provider.dart';

/*

  PlanoApp
  --------

  Base application

*/

class PlanoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plano",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CurtainControl(),
    );
  }
}

/*

  CurtainControl
  --------------

  This widget controls the visibility of the sleep/lock screen when the 
  vehicle is powered on and off. Otherwise the main layout is displayed.

*/

class CurtainControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        child: Consumer<CurtainStore>(
          builder: (context, curtain, child) {
            return IndexedStack(
              index: curtain.index,
              children: [
                CurtainWidget(),
                PlanoLayout(),
              ],
            );
          },
        ),
      ),
    );
  }
}
