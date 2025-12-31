import 'package:flutter/material.dart';

class AppColor {
  //───────────────────────────────────
  // Primary Palette
  //───────────────────────────────────
  // User Requested: Dark Purple, Purple, Lavender
  static const Color darkPurple = Color(0xFF4527A0); // Deep Purple 800
  static const Color purple = Colors.deepPurple; // Standard Deep Purple
  static const Color lavender = Color(0xFFE6E6FA); // Standard Lavender

  static const Color primary = purple;
  static const Color primaryContainer = lavender;
  static const Color secondary = darkPurple;
  static const Color darkContrastPurple = Color(
    0xFF230F46,
  ); // User requested for result value 

  //───────────────────────────────────
  // Light Theme Colors
  //───────────────────────────────────
  static const Color backgroundLight = Color(0xFFF5F5FA); // Smooth off-white
  static const Color surfaceLight = Colors.white;
  static const Color textLightPrimary = Color(0xFF1E1E1E);
  static const Color textLightSecondary = Color(0xFF757575);
  static const Color borderLight = Color(0xFFE0E0E0);
  static const Color snackBarLight = Color(0xFF323232);

  //───────────────────────────────────
  // Dark Theme Colors
  //───────────────────────────────────
  static const Color backgroundDark = Color(0xFF0F111A); // Deep rich dark
  static const Color surfaceDark = Color(0xFF1E202B); // Slightly lighter
  static const Color textDarkPrimary = Color(0xFFF5F5F5);
  static const Color textDarkSecondary = Color(0xFFB0B0B0);
  static const Color borderDark = Color(0xFF2E303D);
  static const Color snackBarDark = Color(0xFFE0E0E0);

  //───────────────────────────────────
  // Functional Colors
  //───────────────────────────────────
  static const Color error = Color(0xFFE53935);
  static const Color success = Color(0xFF43A047);
  static const Color warning = Color(0xFFFB8C00);
  
  static const Color deleteButton = Color(0xFFFF5252);
  
  const AppColor._();
}
