import 'package:flutter/material.dart';
import 'color_palette.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: ColorPalette.primary,
    scaffoldBackgroundColor: ColorPalette.lightBackground,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorPalette.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: const Size(double.infinity, 60),
      ),
    ),
    useMaterial3: true,
  );

  static final darkTheme = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: ColorPalette.primary,
    scaffoldBackgroundColor: ColorPalette.darkBackground,
    brightness: Brightness.dark,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorPalette.primary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minimumSize: const Size(double.infinity, 60),
      ),
    ),
    useMaterial3: true,
  );
}
