import 'package:expense_app/models/category_expense.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/chart_bar.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  final List<Expense> expenses;
  const Chart({Key? key, required this.expenses}) : super(key: key);

  List<CategoryExpense> get categoryExpenses {
    return [
      CategoryExpense.forCategory(expenses, Category.education),
      CategoryExpense.forCategory(expenses, Category.food),
      CategoryExpense.forCategory(expenses, Category.travel),
      CategoryExpense.forCategory(expenses, Category.work),
    ];
  }

  double get maxTotal {
    double maxTotalExoense = 0;

    categoryExpenses.forEach((element) {
      if (element.totalExpensePrice > maxTotalExoense) {
        maxTotalExoense = element.totalExpensePrice;
      }
    });

    return maxTotalExoense;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      color: Theme.of(context).primaryColor.withOpacity(0.3),
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: categoryExpenses
                  .map((categoryExpense) => ChartBar(
                      height: categoryExpense.totalExpensePrice == 0
                          ? 0
                          : categoryExpense.totalExpensePrice / maxTotal))
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: categoryExpenses
                .map(
                  (categoryExpense) => Expanded(
                    child: Icon(categoryIcons[categoryExpense.category]),
                  ),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
