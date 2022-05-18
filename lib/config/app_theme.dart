import 'package:flutter/material.dart';

import 'app_config.dart';

class AppTheme {
  static final ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xff1A1C24),
    ),
    primaryColor: const Color(0xff1A1C24),
    primarySwatch: Colors.grey,
    backgroundColor: const Color(0xff1A1C24),
    // brightness: Brightness.dark,
    iconTheme: const IconThemeData(color: Colors.white),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.black, backgroundColor: Color(0xff1A1C24)),
    // accentIconTheme: IconThemeData(color: Colors.black),
    fontFamily: AppConfig.fontFamily,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(),
    ),
    textButtonTheme: const TextButtonThemeData(),
  );

  static final ThemeData lightTheme = ThemeData(
    fontFamily: AppConfig.fontFamily,
    colorScheme: const ColorScheme.light(
      primary: Colors.indigo,
    ),
    primaryColor: Colors.indigo,
    primarySwatch: Colors.indigo,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.indigo,
    ),
  );
}
