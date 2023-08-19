import 'package:flutter/material.dart';

import '../../core/style/app_theme.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  double turns = 0.0;
  int counter = 0;
  List<String> remembrances = [
    'سبحان الله ',
    "الحمد لله",
    'لا اله الا الله',
    'الله اكبر ',
    'استغقر الله',
  ];
  String title = 'سبحان الله';

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsetsDirectional.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                AppTheme.themeMode != ThemeMode.dark
                    ? 'assets/images/headSebhaLight.png'
                    : "assets/images/head of seb7a.png",
                height: 100,
              ),
              Container(
                margin: EdgeInsetsDirectional.only(
                  top: 65,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      turns += 1 / 1;
                      counter += 1;
                      remembrances;
                    });
                  },
                  child: AnimatedRotation(
                      turns: turns,
                      duration: Duration(seconds: 1),
                      child: Image.asset(
                        AppTheme.themeMode != ThemeMode.dark
                            ? 'assets/images/bodySebhaLight.png'
                            : "assets/images/body of seb7a.png",
                        height: 200,
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'عدد التسيبحات',
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadiusDirectional.circular(10.0)),
            child: Text('$counter', style: theme.textTheme.bodyLarge),
          ),
          SizedBox(
            height: 14,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  CounterSabha();
                  turns += 1 / 1;
                });
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(20.0),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(theme.canvasColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(title,
                    style: theme.textTheme.bodyLarge!
                        .copyWith(color: Colors.black)),
              ))
        ],
      ),
    );
  }

  void CounterSabha() {
    counter += 1;

    if (counter > -1 && counter < 33) {
      title = remembrances[0];
    } else if (counter > 32 && counter < 66) {
      title = remembrances[1];
    } else if (counter > 65 && counter < 99) {
      title = remembrances[2];
    } else if (counter > 98 && counter < 132) {
      title = remembrances[3];
    } else if (counter > 131 && counter < 165) {
      title = remembrances[4];
    } else {
      counter = 0;
      setState(() {});
    }
  }
}
