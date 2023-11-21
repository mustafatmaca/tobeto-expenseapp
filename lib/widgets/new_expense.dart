import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewExpense extends StatefulWidget {
  final void Function(Expense expense) onAdd;

  const NewExpense({required this.onAdd, Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _date = DateTime.now();
  Category _category = Category.food;

  void datePicker() async {
    var date = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2000, 1, 1),
      lastDate: DateTime.now(),
    );
    if (date != null) {
      changeDateText(date);
    }
  }

  void changeDateText(date) {
    setState(() {
      _date = date;
    });
  }

  void addNewExpense() {
    final amount = double.tryParse(_amountController.text);
    if (amount == null || amount < 0 || _nameController.text.isEmpty) {
      showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: const Text("Validation Error"),
            content: const Text("Please fill all blank areas."),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK"))
            ],
          );
        }),
      );
    } else {
      widget.onAdd(Expense(
          name: _nameController.text,
          price: amount,
          date: _date,
          category: _category));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Expense Name")),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      label: Text("Amount"), prefixText: "₺"),
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(DateFormat.yMd().format(_date)),
                    IconButton(
                        onPressed: () {
                          datePicker();
                        },
                        icon: const Icon(Icons.calendar_month)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const Text("Choose Category:"),
              const Spacer(),
              DropdownButton(
                  value: _category,
                  items: Category.values.map((category) {
                    return DropdownMenuItem(
                        value: category, child: Text(category.name.toString()));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value != null) {
                        _category = value;
                      }
                    });
                  })
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Vazgeç")),
              ElevatedButton(
                  onPressed: () {
                    addNewExpense();
                  },
                  child: const Text("Kaydet")),
            ],
          )
        ],
      ),
    );
  }
}
