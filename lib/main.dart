import 'package:flutter/material.dart';
import 'package:melodify/core/theme/app_theme.dart';
import 'package:melodify/features/splash/views/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Melodify',
      theme: AppTheme.darkTheme,
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}