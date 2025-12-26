import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/app_theme.dart';
import 'package:task_manager_app/features/authentication/ui/login_screen.dart';

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
