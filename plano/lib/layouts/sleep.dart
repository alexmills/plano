import 'package:flutter/material.dart';
import 'package:plano/system/stores/director.dart';
import 'package:provider/provider.dart';

/*

  SleepWakeWidget
  -------------

  This widget controls the layout of the sleep/wake screen when
  the vehicle changes power modes

*/

class SleepWakeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              'Curtains',
              style: Theme.of(context).textTheme.headline4,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.blue,
            ),
          ),
          TextButton(
            onPressed: () {
              var director = context.read<DirectorStore>();
              director.hideSleepLayout();
            },
            child: Text('Hide Curtain'),
          ),
        ],
      ),
    );
  }
}
