import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/main_page/pages/main_page_screen.dart';

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
        scaffoldBackgroundColor: scaffoldColor,
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: textEnableColor),
          bodyMedium: TextStyle(color: textEnableColor),
          bodyLarge: TextStyle(color: textEnableColor),
        ),
      ),
      home: MainPageScreen(),
    );
  }
}
