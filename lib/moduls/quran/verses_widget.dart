import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class VirsesWidget extends StatelessWidget {
  String content;
  int index;

  VirsesWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
      child: Text("$content ($index)",
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: !provider.isDark() ? Colors.black : theme.canvasColor,
          )),
    );
  }
}
