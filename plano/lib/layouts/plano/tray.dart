/*

  Clock
  -----

*/

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:plano/layouts/plano/status.dart';

class Tray extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.amber,
      child: Row(
        children: [
          Expanded(child: TrayDateTime()),
          TrayStatus(),
        ],
      ),
    );
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
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(DateFormat("h:mm a").format(_now)),
          Text(DateFormat("E d").format(_now)),
        ],
      ),
    );
  }
}
