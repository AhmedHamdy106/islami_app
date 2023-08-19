import 'package:flutter/material.dart';

class HadethTitleWidget extends StatelessWidget {
  final String title; // Added 'final' keyword to make it immutable
  HadethTitleWidget(this.title);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Text(title,
        textAlign: TextAlign.center, style: theme.textTheme.bodyLarge);
  }
}
