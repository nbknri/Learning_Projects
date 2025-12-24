import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/app_theme.dart';
import 'package:task_manager_app/features/auth/ui/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: LoginScreen(),
    );
  }
}
