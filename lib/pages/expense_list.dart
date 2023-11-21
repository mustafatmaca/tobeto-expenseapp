import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  final void Function(Expense expense) onRemove;

  const ExpenseList(this.onRemove, {Key? key}) : super(key: key);

  @override
  _ExpenseListState createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
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
                return Dismissible(
                  key: ValueKey(expenses[index]),
                  child: ExpenseItem(expenses[index]),
                  onDismissed: (direction) {
                    widget.onRemove(expenses[index]);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
