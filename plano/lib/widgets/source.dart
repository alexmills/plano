import 'package:flutter/material.dart';

class SourceWidget extends StatelessWidget {
  final List<Widget> children;
  final String title;

  SourceWidget({required this.title, required this.children});

  @override
  build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      width: 336,
      color: theme.primaryColorLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.headline1,
          ),
          ...children,
        ],
      ),
    );
  }
}
