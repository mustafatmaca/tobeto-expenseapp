import 'package:expense_app/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainPage(),
    ),
  );
}
