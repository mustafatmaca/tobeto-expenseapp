import 'package:expense_app/models/expense.dart';
import 'package:expense_app/pages/expense_list.dart';
import 'package:expense_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void addExpense(Expense expense) {
    setState(() {
      expenses.add(expense);
    });
  }

  Expense removeExpense(int expenseIndex) {
    var deletedExpense;
    setState(() {
      deletedExpense = expenses.removeAt(expenseIndex);
    });
    return deletedExpense;
  }

  SnackBar showSnackBar(Expense expense) {
    return SnackBar(
      content: const Text("Expense Removed"),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          setState(() {
            expenses.add(expense);
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) => NewExpense(
                        onAdd: (expense) => addExpense(expense),
                      ));
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
        title: const Text("ExpenseApp"),
      ),
      body: ExpenseList(removeExpense, showSnackBar),
    );
  }
}
