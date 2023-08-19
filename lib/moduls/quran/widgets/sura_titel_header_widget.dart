import 'package:flutter/material.dart';

class SuraTitleHeaderWidget extends StatelessWidget {
  const SuraTitleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Divider(
          color: theme.canvasColor,
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("رقم السورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium),
            Container(
              width: 2,
              height: 40,
              color: theme.canvasColor,
            ),
            Text("اسم السورة",
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium),
          ],
        ),
        Divider(
          color: theme.canvasColor,
          thickness: 2,
        ),
      ],
    );
  }
}
