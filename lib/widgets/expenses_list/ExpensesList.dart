import 'package:expenses_tracker/Model/expense.dart';
import 'package:expenses_tracker/widgets/expenses_list/Expenses_Item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});
  final Function(Expense expense) onRemoveExpense;
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    //build constructor is used to build a list item when it needed
    return ListView.builder(
      //listView make the thing scrollable

      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.5),
        ),
        onDismissed: (direction) {
          onRemoveExpense(
              expenses[index]); //this will remove the item from list internally
        },
        child: ExpensesItem(expenses[index]),
      ),
    );
  }
}

//Dismissible widget is used for swipe away an item of a list like here ExpenseItem(idx) mean to be swipe away
