import 'package:flutter/material.dart';

class AppTextStyle {
  const AppTextStyle._();

  static const TextStyle appBarTitle = TextStyle(
    fontWeight: FontWeight.bold,
  );

  static TextStyle resultTitle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
      fontSize: 16,
    );
  }

  static TextStyle resultValue(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
}
