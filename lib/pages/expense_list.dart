import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList({Key? key}) : super(key: key);

  @override
  _ExpenseListState createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  final List<Expense> expenses = [
    Expense(
        name: "Hamburger",
        price: 200,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Udemy Course",
        price: 200,
        date: DateTime.now(),
        category: Category.education),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          const Text(
            "Charts",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Expanded(
            flex: 1,
            child: Center(child: Text("Charts Place")),
          ),
          const Text(
            "Expenses",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Expanded(
            flex: 3,
            child: ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                return ExpenseItem(expenses[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
