import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_app/core/di/service_locator.dart';
import 'package:task_manager_app/core/theme/app_theme.dart';
import 'package:task_manager_app/features/authentication/presentation/bloc/auth_bloc.dart';
import 'package:task_manager_app/features/authentication/presentation/pages/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: BlocProvider(
        create: (context) => getIt<AuthBloc>(),
        child: LoginScreen(),
      ),
    );
  }
}
