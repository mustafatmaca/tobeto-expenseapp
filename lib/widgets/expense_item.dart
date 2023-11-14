import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem(this.expense, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expense.name),
            Row(
              children: [
                Text("${expense.price.toStringAsFixed(2)} ₺"),
                const Spacer(),
                Icon(
                  categoryIcons[expense.category],
                  color: Colors.black45,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(expense.formattedDate),
              ],
            )
          ],
        ),
      ),
    );
  }
}
