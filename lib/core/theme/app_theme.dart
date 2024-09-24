import 'package:flutter/material.dart';
import 'color_palette.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: ColorPalette.primary,
    scaffoldBackgroundColor: ColorPalette.lightBackground,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorPalette.primary,
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    ),
    useMaterial3: true,
  );

  static final darkTheme = ThemeData(
    primaryColor: ColorPalette.primary,
    scaffoldBackgroundColor: ColorPalette.darkBackground,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorPalette.primary,
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    ),
    useMaterial3: true,
  );
}
