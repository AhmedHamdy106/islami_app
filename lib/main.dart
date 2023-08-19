import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/moduls/hadeth/hadeth_details.dart';
import 'package:islami_app/moduls/quran/sura_details_view.dart';
import 'package:islami_app/moduls/splash/splash_view.dart';

import 'core/style/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("en"),
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        HomeLayout.routeName: (context) => HomeLayout(),
        SuraDetailsView.routeName: (context) => SuraDetailsView(),
        HadethDetailsVeiw.routeName: (context) => HadethDetailsVeiw(),
      },
    );
  }
}
