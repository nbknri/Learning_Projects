import 'package:flutter/material.dart';

class AppColor {
  // ========================================
  // Professional Civil Engineering Theme
  // ========================================
  
  // Primary Brand Colors
  static const Color primary = Color(
    0xFF1565C0,
  ); // Royal Blue - Professional, trustworthy
  static const Color accent = Color(
    0xFFFF6F00,
  ); // Safety Orange - High visibility, engineering standard
  static const Color secondary = Color(0xFF0D47A1); // Darker Blue for depth
  
  // Light Mode Colors
  static const Color backgroundLight = Color(0xFFFFFFFF); // Clean white
  static const Color surfaceLight = Color(
    0xFFFAFAFA,
  ); // Subtle off-white for cards
  static const Color primaryContainer = Color(
    0xFFE3F2FD,
  ); // Light blue container
  static const Color textLightPrimary = Color(
    0xFF212121,
  ); // Near black for readability
  static const Color textLightSecondary = Color(0xFF757575); // Medium gray
  static const Color borderLight = Color(0xFFE0E0E0); // Light gray borders
  static const Color snackBarLight = Color(0xFF424242);

  // Dark Mode Colors
  static const Color backgroundDark = Color(0xFF121212); // Dark navy
  static const Color surfaceDark = Color(
    0xFF1E1E1E,
  ); // Slightly lighter surface
  static const Color textDarkPrimary = Color(0xFFE0E0E0); // Light gray text
  static const Color textDarkSecondary = Color(0xFFB0B0B0); // Medium gray text
  static const Color borderDark = Color(0xFF424242); // Dark gray borders
  static const Color snackBarDark = Color(0xFF2D2D2D);

  // Semantic Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color deleteButton = Color(0xFFE53935);

  const AppColor._();
}
