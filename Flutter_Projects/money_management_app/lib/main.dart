import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:money_management_app/db/hive/hive_registrar.g.dart';
import 'package:money_management_app/screen/home/home_screen.dart';
import 'package:money_management_app/screen/transaction/add_transaction_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapters();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.redAccent, useMaterial3: false),
      home: const HomeScreen(),
      routes: {
        AddTransactionScreen.routeName: (ctx) => const AddTransactionScreen(),
      },
    );
  }
}
