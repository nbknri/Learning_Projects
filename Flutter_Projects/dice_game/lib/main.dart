import 'package:dice_game/dice_page.dart';
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
      theme: ThemeData(
        useMaterial3: false,
        colorSchemeSeed: Colors.deepPurpleAccent.shade700,
      ),
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent.shade700,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.shade700,
          title: Text(
            "Dice Game",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: DicePage(),
      ),
    );
  }
}
