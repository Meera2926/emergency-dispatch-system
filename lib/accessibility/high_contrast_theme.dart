import 'package:flutter/material.dart';

class HighContrastTheme {
  static ThemeData get themeData {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      primaryColor: const Color(0xFFFF0033),
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFFFF0033),
        onPrimary: Colors.white,
        surface: Colors.black,
        onSurface: Colors.white,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
        bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
