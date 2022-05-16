import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Chanthavong',
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
