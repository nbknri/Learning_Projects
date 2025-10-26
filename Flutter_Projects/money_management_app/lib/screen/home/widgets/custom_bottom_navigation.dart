import 'package:flutter/material.dart';
import 'package:money_management_app/screen/home/home_screen.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: HomeScreen.selectedIndexNotifier,
      builder: (BuildContext context, int updatedIndex, Widget? _) {
        return BottomNavigationBar(
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          currentIndex: updatedIndex,
          onTap: (newIndex) =>
              HomeScreen.selectedIndexNotifier.value = newIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Transactions",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Category",
            ),
          ],
        );
      },
    );
  }
}
