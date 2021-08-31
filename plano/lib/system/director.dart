import 'package:flutter/material.dart';
import 'package:plano/layouts/plano.dart';
import 'package:plano/layouts/sleep.dart';
import 'package:plano/system/stores/director.dart';
import 'package:provider/provider.dart';

class DirectorControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topLeft,
        child: Consumer<DirectorStore>(
          builder: (context, director, child) {
            return IndexedStack(
              index: director.index,
              children: [
                PlanoLayout(),
                SleepWakeLayout(),
              ],
            );
          },
        ),
      ),
    );
  }
}
