import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String CurrentLanguage = "en";

  selectArabicLanguage() {
    CurrentLanguage = "ar";
    notifyListeners();
  }

  selectEnglishLanguage() {
    CurrentLanguage = "en";
    notifyListeners();
  }

  enableDarkTheme() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  enableLightTheme() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  bool isDark() {
    return themeMode == ThemeMode.dark;
  }

  String selectBackground() {
    if (isDark()) {
      notifyListeners();
      return "assets/images/background_dark.png";
    } else {
      notifyListeners();
      return "assets/images/background_light.png";
    }
  }
}
