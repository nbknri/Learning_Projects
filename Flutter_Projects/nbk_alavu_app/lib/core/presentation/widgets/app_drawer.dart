import 'package:flutter/material.dart';

enum AppRoute {
  shapeCalculator,
  unitConverter,
}

class AppDrawer extends StatelessWidget {
  final AppRoute currentRoute;
  final VoidCallback onNavigateToCalculator;
  final VoidCallback onNavigateToConverter;

  const AppDrawer({
    super.key,
    required this.currentRoute,
    required this.onNavigateToCalculator,
    required this.onNavigateToConverter,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Center(
              child: Text(
                "Alavu Tools",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.calculate),
            title: const Text('Shape Calculator'),
            selected: currentRoute == AppRoute.shapeCalculator,
            onTap: onNavigateToCalculator,
          ),
          ListTile(
            leading: const Icon(Icons.swap_horiz),
            title: const Text('Unit Converter'),
            selected: currentRoute == AppRoute.unitConverter,
            onTap: onNavigateToConverter,
          ),
        ],
      ),
    );
  }
}
