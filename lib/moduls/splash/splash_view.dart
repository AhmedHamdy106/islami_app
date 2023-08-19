import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/core/style/app_theme.dart';
import 'package:islami_app/layout/home_layout.dart';

class SplashView extends StatelessWidget {
  static const String routeName = "Splash";

  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppTheme.themeMode != ThemeMode.dark
              ? "assets/images/splash_background.png"
              : "assets/images/darksplash.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
