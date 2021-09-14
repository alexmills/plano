import 'package:flutter/material.dart';
import 'package:plano/widgets/detail.dart';

class VehicleGaugesDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DetailWidget(
      child: Text("Gauges", style: theme.textTheme.headline1),
    );
  }
}
