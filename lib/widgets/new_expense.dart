import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
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
              onPressed: () {
                //DatePicker
                //DatePicker'dan gelen değeri yazdırmak
              },
              icon: Icon(Icons.calendar_month)),
          Text("Tarih Seçiniz"), //seçilen tarih yazdır
          ElevatedButton(
              onPressed: () {
                print("Kayıt Başarılı: ${_nameController.text}");
              },
              child: Text("Kaydet"))
        ],
      ),
    );
  }
}
