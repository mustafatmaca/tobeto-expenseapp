import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  final Expense Function(int expenseIndex) onRemove;
  final SnackBar Function(Expense expense) removeSnackBar;

  const ExpenseList(this.onRemove, this.removeSnackBar, {Key? key})
      : super(key: key);

  @override
  _ExpenseListState createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  Expense? deletedExpense;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Text(
            "Charts",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const Expanded(
            flex: 1,
            child: Center(child: Text("Charts Place")),
          ),
          Text(
            "Expenses",
            style: Theme.of(context).textTheme.titleMedium,
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
                    deletedExpense = widget.onRemove(index);
                    ScaffoldMessenger.of(context)
                        .showSnackBar(widget.removeSnackBar(deletedExpense!));
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
