import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _date = DateTime.now();

  void changeDateText(date) {
    setState(() {
      _date = date;
    });
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
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(label: Text("Amount"), prefixText: "₺"),
          ),
          IconButton(
              onPressed: () async {
                var date = await showDatePicker(
                  context: context,
                  initialDate: _date,
                  firstDate: DateTime(2000, 1, 1),
                  lastDate: DateTime.now(),
                );
                if (date != null) {
                  changeDateText(date);
                }
              },
              icon: const Icon(Icons.calendar_month)),
          Text(DateFormat.yMd().format(_date)),
          ElevatedButton(
              onPressed: () {
                print("Kayıt Başarılı: ${_nameController.text}");
              },
              child: const Text("Kaydet"))
        ],
      ),
    );
  }
}
