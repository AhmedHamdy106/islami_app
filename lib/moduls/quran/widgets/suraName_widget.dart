import 'package:flutter/material.dart';
import 'package:islami_app/moduls/quran/sura_details_view.dart';

class SuraNameWidget extends StatelessWidget {
  final String SuraName;
  final int SuraNumber;
  const SuraNameWidget(
      {super.key, required this.SuraName, required this.SuraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsView.routeName,
            arguments: SuraDetails(SuraName, SuraNumber));
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text("${SuraNumber + 1}",
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge),
            ),
            Container(
              height: 40,
              width: 2,
              color: theme.canvasColor,
            ),
            Expanded(
              child: Text(
                SuraName,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SuraDetails {
  String suraName;
  int suraIndex;

  SuraDetails(this.suraName, this.suraIndex);
}