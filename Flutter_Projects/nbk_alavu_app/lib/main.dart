import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/land_calculator_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Initially use system or light/dark. Let's start with light as default or follow system.
  ThemeMode _themeMode = ThemeMode.light; 

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Land Calculator",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.light),
        useMaterial3: true,
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.deepPurple,
          contentTextStyle: TextStyle(color: Colors.white),
          behavior: SnackBarBehavior.floating,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, brightness: Brightness.dark),
        useMaterial3: true,
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.deepPurple.shade200,
          contentTextStyle: const TextStyle(color: Colors.black),
          behavior: SnackBarBehavior.floating,
        ),
      ),
      themeMode: _themeMode,
      home: LandCalculatorScreen(
        onThemeChanged: _toggleTheme,
        isDarkMode: _themeMode == ThemeMode.dark,
      ),
    );
  }
}