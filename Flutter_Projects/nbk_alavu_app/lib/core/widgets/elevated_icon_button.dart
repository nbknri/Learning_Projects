import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback addTriangleFunction;
  final IconData buttonIcon;
  final String buttonLabel;

  const AppElevatedButton({
    super.key,
    required this.addTriangleFunction,
    required this.buttonIcon, 
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: addTriangleFunction,
      icon: Icon(buttonIcon),
      label: Text(buttonLabel),
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}

