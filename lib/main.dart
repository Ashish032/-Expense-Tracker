import 'package:flutter/material.dart';
import 'package:expenses_tracker/widgets/expenses.dart';
//import 'package:flutter/services.dart';

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 5, 99, 125));

main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) {
  runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
      //for Dark Theme
      useMaterial3: true,
      colorScheme: kDarkColorScheme,
    ),
    theme: ThemeData().copyWith(
      //for Light Theme
      useMaterial3: true,
      colorScheme: kColorScheme,
      datePickerTheme: const DatePickerThemeData().copyWith(
        backgroundColor: kColorScheme.onPrimary,
      ),
      appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.onPrimary),
      cardTheme: const CardTheme().copyWith(
          color: const Color.fromARGB(255, 144, 105, 253).withOpacity(0.7),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 6)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.onPrimaryContainer,
              foregroundColor: Colors.white)),
    ),
    home: const Expenses(),
  ));
}
