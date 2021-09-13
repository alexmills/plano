import 'package:flutter/material.dart';
import 'package:plano/stores/settings.dart';
import 'package:plano/widgets/source.dart';
import 'package:provider/provider.dart';

class SplitViewWidget extends StatelessWidget {
  final SourceWidget source;
  final Widget detail;

  SplitViewWidget({required this.source, required this.detail});

  @override
  build(BuildContext context) {
    final widgets = [
      Expanded(child: detail),
      source,
    ];

    return Consumer<SettingsStore>(builder: (builder, settings, child) {
      return Container(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: settings.isRightHandDrive
                ? widgets
                : widgets.reversed.toList()),
      );
    });
  }
}
