/*

  Clock
  -----

*/

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:plano/layouts/plano/status.dart';
import 'package:plano/stores/settings.dart';
import 'package:provider/provider.dart';

// Padding to edge of display
const K_PAD_EDGE = 30.0;

// Padding between time and icons
const K_PAD_INNER = 17.0;

class Tray extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsStore>(builder: (builder, settings, child) {
      final widgets = [
        Expanded(child: TrayDateTime()),
        TrayStatus(),
      ];

      return Container(
        width: 250,
        color: Colors.amber,
        padding: EdgeInsets.only(left: K_PAD_EDGE, right: K_PAD_EDGE),
        child: Row(
            children: (settings.isRightHandDrive)
                ? widgets
                : widgets.reversed.toList()),
      );
    });
  }
}

class TrayDateTime extends StatefulWidget {
  TrayDateTime({Key? key}) : super(key: key);

  @override
  _TrayDateTimeState createState() => _TrayDateTimeState();
}

class _TrayDateTimeState extends State<TrayDateTime> {
  DateTime _now = DateTime.now();
  late Timer _timer;

  @override
  void initState() {
    _updateClock();
    super.initState();
  }

  void _updateClock() {
    setState(() {
      _now = DateTime.now();
      _timer = Timer(
          Duration(minutes: 1) -
              Duration(seconds: _now.second) -
              Duration(milliseconds: _now.millisecond),
          _updateClock);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsStore>(builder: (builder, settings, child) {
      TextTheme style = Theme.of(context).textTheme;

      final alignment = (settings.isRightHandDrive)
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start;

      return Container(
        padding: EdgeInsets.only(left: K_PAD_INNER, right: K_PAD_INNER),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: alignment,
          children: [
            Text(
              DateFormat("h:mm a").format(_now),
              style: style.headline5,
            ),
            Text(
              DateFormat("E d").format(_now).toUpperCase(),
              style: style.headline6,
            ),
          ],
        ),
      );
    });
  }
}
