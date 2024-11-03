import 'package:flutter/material.dart';

extension CurrentTheme on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;
}
