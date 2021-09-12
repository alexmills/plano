import 'package:flutter/material.dart';
import 'package:plano/widgets/source.dart';

class SplitViewWidget extends StatelessWidget {
  final SourceWidget source;
  final Widget detail;

  SplitViewWidget({required this.source, required this.detail});

  @override
  build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          source,
          Expanded(child: detail),
        ],
      ),
    );
  }
}
