import 'package:expense_app/pages/expense_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          shape: const Border(
            bottom: BorderSide(
              color: Colors.indigo,
              width: 1,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.indigo,
              ),
            ),
          ],
          title: const Text(
            "ExpenseApp",
            style: TextStyle(color: Colors.indigo),
          ),
        ),
        body: const ExpenseList(),
      ),
    ),
  );
}
