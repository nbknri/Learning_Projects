import 'package:flutter/material.dart';
import 'package:login_signup/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login and Signup",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple)
      ),
      home: const WelcomeScreen(),
    );
  }
}