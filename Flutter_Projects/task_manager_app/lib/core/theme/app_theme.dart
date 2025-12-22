import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    // ─────────────────────────────────────────
    // Overall brightness
    // ─────────────────────────────────────────
    brightness: Brightness.light,

    // ─────────────────────────────────────────
    // Primary color
    // ─────────────────────────────────────────
    primaryColor: AppColors.primary,

    // ─────────────────────────────────────────
    // Scaffold background
    // ─────────────────────────────────────────
    scaffoldBackgroundColor: AppColors.background,

    // ─────────────────────────────────────────
    // AppBar Theme
    // ─────────────────────────────────────────
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      foregroundColor: AppColors.textPrimary,
      elevation: 0,
      centerTitle: false,
    ),

    // ─────────────────────────────────────────
    // Text Theme
    // ─────────────────────────────────────────
    textTheme: const TextTheme(
      titleLarge: AppTextStyles.title,
      titleMedium: AppTextStyles.subtitle,
      bodyMedium: AppTextStyles.body,
      bodySmall: AppTextStyles.caption,
      labelLarge: AppTextStyles.button,
    ),

    // ─────────────────────────────────────────
    // Floating Action Button
    // ─────────────────────────────────────────
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    ),

    // ─────────────────────────────────────────
    // Elevated Button Theme
    // ─────────────────────────────────────────
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppTextStyles.button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    // ─────────────────────────────────────────
    // Input Field Theme
    // ─────────────────────────────────────────
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surface,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      hintStyle: AppTextStyles.caption,
    ),
  );

  // Prevent instantiation
  const AppTheme._();
}
