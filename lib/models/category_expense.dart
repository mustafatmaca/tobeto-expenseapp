import 'package:expense_app/models/expense.dart';

class CategoryExpense {
  final Category category;
  final List<Expense> expenses;

  const CategoryExpense({required this.category, required this.expenses});

  CategoryExpense.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((element) => element.category == category)
            .toList();

  double get totalExpensePrice {
    double sum = 0;

    expenses.forEach((element) {
      sum += element.price;
    });

    return sum;
  }
}
