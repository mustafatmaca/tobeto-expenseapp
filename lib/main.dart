import 'package:expense_app/pages/main_page.dart';
import 'package:flutter/material.dart';

ColorScheme lightColorsScheme = ColorScheme.fromSeed(seedColor: Colors.indigo);
void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorsScheme,
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: lightColorsScheme.onPrimaryContainer,
            foregroundColor: lightColorsScheme.primaryContainer),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: lightColorsScheme.primary,
                  fontSize: 16),
            ),
      ),
      home: const MainPage(),
    ),
  );
}
