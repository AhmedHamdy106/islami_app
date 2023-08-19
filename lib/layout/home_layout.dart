import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/moduls/hadeth/hadeth_view.dart';
import 'package:islami_app/moduls/quran/quran_view.dart';
import 'package:islami_app/moduls/radio/radio_view.dart';
import 'package:islami_app/moduls/sebha/sebha_view.dart';
import 'package:islami_app/moduls/settings/settings_view.dart';

import '../core/style/app_theme.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedindex = 0;
  List<Widget> ScreenWidgets = [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppTheme.themeMode != ThemeMode.dark
                ? "assets/images/background_light.png"
                : "assets/images/background_dark.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islami,
              style: theme.textTheme.titleLarge,
            ),
          ),
          body: ScreenWidgets[selectedindex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_moshaf.png")),
                  label: AppLocalizations.of(context)!.quran),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_hadeth.png")),
                  label: AppLocalizations.of(context)!.hadeth),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                  label: AppLocalizations.of(context)!.tasbeh),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
                  label: AppLocalizations.of(context)!.radio),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: AppLocalizations.of(context)!.setting),
            ],
          ),
        ));
  }
}
