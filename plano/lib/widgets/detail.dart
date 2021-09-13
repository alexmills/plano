import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  final Widget child;

  DetailWidget({required this.child});

  @override
  build(BuildContext context) {
    final pad = 60.0;
    return Container(
      padding: EdgeInsets.fromLTRB(pad, pad, pad, 0),
      child: child,
    );
  }
}
