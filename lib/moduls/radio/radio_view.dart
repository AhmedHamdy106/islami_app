import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Padding(
        // padding: const EdgeInsets.all(80),child:
        Image.asset(
          "assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png",
          width: 400,
          height: 200,
        ),
        // ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Text(
            "إذاعة القرآن الكريم",
            style: theme.textTheme.titleMedium,
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.skip_previous,
                  size: 80,
                  color: theme.canvasColor,
                ),
                Icon(
                  Icons.play_arrow,
                  size: 80,
                  color: theme.canvasColor,
                ),
                Icon(
                  Icons.skip_next,
                  size: 80,
                  color: theme.canvasColor,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
