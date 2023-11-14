import 'package:expense_app/pages/expense_list.dart';
import 'package:expense_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () {
              showModalBottomSheet(
                  context: context, builder: (context) => const NewExpense());
            },
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
    );
  }
}
