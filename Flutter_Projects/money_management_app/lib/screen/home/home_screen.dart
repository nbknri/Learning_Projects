import 'package:flutter/material.dart';
import 'package:money_management_app/screen/category/category_screen.dart';
import 'package:money_management_app/screen/home/widgets/custom_bottom_navigation.dart';
import 'package:money_management_app/screen/transaction/transaction_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  final _pages = const [TransactionScreen(), CategoryScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text("Money Manager"), centerTitle: true),
      bottomNavigationBar: const CustomBottomNavigation(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (selectedIndexNotifier.value == 0) {
            print('Add Transaction');
          } else {
            print('Add Category');
          }
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder: (BuildContext context, int updatedIndex, Widget? _) {
            return _pages[updatedIndex];
          },
        ),
      ),
    );
  }
}
