import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class SplashView extends StatelessWidget {
  static const String routeName = "Splash";

  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(HomeLayout.routeName);
    });
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(!provider.isDark()
              ? "assets/images/splash_background.png"
              : "assets/images/darksplash.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
