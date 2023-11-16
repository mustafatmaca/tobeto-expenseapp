import 'package:expense_app/pages/expense_list.dart';
import 'package:expense_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            onPressed: () async {
              await showModalBottomSheet(
                  context: context, builder: (context) => const NewExpense());
              setState(() {});
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
      body: ExpenseList(),
    );
  }
}
