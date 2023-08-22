import 'package:flutter/material.dart';

class AppTheme {
  static Color lightPrimary = const Color(0xFFB7935F);
  static Color darkPrimary = const Color(0xFF141A2E);
  static ThemeMode themeMode = ThemeMode.dark;
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    canvasColor: const Color(0xFFB7935F),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: const Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 30,
      ),
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 26,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30.0,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 25.0,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xFFB7935F),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ))),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFF141A2E),
    canvasColor: const Color(0xFFFACC1D),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: const Color(0xFF141A2E),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFACC1D),
        size: 30,
      ),
      selectedItemColor: Color(0xFFFACC1D),
      selectedLabelStyle: TextStyle(
        color: Color(0xFFFACC1D),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 26,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 30.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 25.0,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
          fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xFF141A2E),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ))),
  );
}
