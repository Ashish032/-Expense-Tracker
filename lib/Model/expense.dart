import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; //this package used for formating date

final formatter = DateFormat.yMd();

const uuid = Uuid(); //dynamically defind id

enum Category {
  food,
  travel,
  leisure,
  work
} //enum allows us to create a custom 'type'

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formatedDate {
    return formatter
        .format(date); //this transform the date into readable format
  }
}

class ExpenseBucket {
  const ExpenseBucket({required this.category, required this.expenses});

  ExpenseBucket.forCategory(List<Expense> allExpense, this.category)
      : expenses = allExpense
            .where((expense) =>
                expense.category ==
                category) //here where filter out the item which are in same category
            .toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;
    for (final expense in expenses) {
      //here dart will iterate through all the items of expenses list and that are pickd by expense
      sum += expense.amount;
    }

    return sum;
  }
}
