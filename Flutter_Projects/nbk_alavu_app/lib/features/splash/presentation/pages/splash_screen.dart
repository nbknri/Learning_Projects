import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/pages/shape_calculator_screen.dart';

class SplashScreen extends StatefulWidget {
  final VoidCallback onThemeChanged;
  const SplashScreen({
    super.key,
    required this.onThemeChanged,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 500), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              ShapeCalculatorScreen(
            onThemeChanged: widget.onThemeChanged,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo or Icon could go here
            Image.asset(
              "assets/images/logo.png",
              width: 150,
            ),
          ],
        ),
      ),
    );
  }
}
