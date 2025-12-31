import 'package:flutter/material.dart';

class AppTextStyle {
  const AppTextStyle._();

  //───────────────────────────────────
  // Component Styles
  //───────────────────────────────────
  static TextStyle appBarTitle(Color color) {
    return TextStyle(
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.5,
    );
  }

  static TextStyle inputLabel(Color color) {
    return TextStyle(color: color);
  }

  static TextStyle inputHint(Color color) {
    return TextStyle(color: color.withValues(alpha: 0.7));
  }

  static TextStyle buttonText(Color color) {
    return const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  }

  static TextStyle snackBarContent(Color color) {
    return TextStyle(color: color);
  }

  //───────────────────────────────────
  // Result Styles
  //───────────────────────────────────
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
