import 'package:bmi_calculator/screens/main_screen.dart';
import 'package:bmi_calculator/variables/global_variables.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: mainBgColor,
          foregroundColor: Colors.white,
        ),
        scaffoldBackgroundColor: mainBgColor,
      ),
      home: MainScreen(),
    );
  }
}