import 'package:flutter/material.dart';

class SourceWidget extends StatelessWidget {
  final List<Widget> children;
  final String title;

  SourceWidget({required this.title, required this.children});

  @override
  build(BuildContext context) {
    final theme = Theme.of(context);
    final text = theme.textTheme.headline1?.copyWith(
      color: theme.primaryColor,
    );

    return Container(
      padding: EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      width: 336,
      color: theme.primaryColorLight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 50, left: 12),
            child: Text(title, style: text),
          ),
          ...children,
        ],
      ),
    );
  }
}

class SourceButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final ThemeData theme;
  final Function action;

  SourceButton({
    required this.icon,
    required this.label,
    required this.theme,
    required this.selected,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(6);
    final background = selected ? theme.primaryColor : theme.primaryColorLight;
    final foreground = selected ? Colors.white : theme.primaryColor;
    final text = theme.textTheme.button?.copyWith(color: foreground);

    return Container(
      height: 60,
      margin: EdgeInsets.only(bottom: 22),
      child: Material(
        color: background,
        borderRadius: radius,
        child: InkWell(
          borderRadius: radius,
          onTap: () {
            action();
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 22),
                  child: Icon(icon, color: foreground, size: 36),
                ),
                Text(label, style: text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
