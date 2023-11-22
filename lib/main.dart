import 'package:expense_app/pages/main_page.dart';
import 'package:expense_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

ColorScheme lightColorsScheme = ColorScheme.fromSeed(seedColor: Colors.indigo);
void main() {
  runApp(
    MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const MainPage(),
    ),
  );
}
