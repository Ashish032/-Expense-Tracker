import 'package:expenses_tracker/Model/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(children: [
        Text(
          expense.title,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text("\$${expense.amount.toStringAsFixed(2)}"),
            const Spacer(),
            Row(
              children: [
                Icon(categoryIcons[expense.category]),
                Text(expense.formatedDate)
              ],
            )
          ],
        )
      ]),
    ));
  }
}
