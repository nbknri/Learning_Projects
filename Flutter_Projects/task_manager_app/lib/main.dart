import 'package:flutter/material.dart';
import 'package:task_manager_app/app.dart';
import 'package:task_manager_app/core/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupServiceLocator();
  
  runApp(const MyApp());
}
