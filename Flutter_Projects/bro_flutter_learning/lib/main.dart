import 'package:bro_flutter_learning/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Learning",
      theme: ThemeData(
        useMaterial3: false,
        // primarySwatch: Colors.teal,
        colorSchemeSeed: Colors.teal
      ),
      
      home: SplashScreen()
    );
  }
}


