import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/app_colors.dart';
import 'package:task_manager_app/core/theme/app_text_styles.dart';

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
      labelLarge: AppTextStyles.elevatedButton,
    ),

    // ─────────────────────────────────────────
    // Progress Indicator
    // ─────────────────────────────────────────
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      strokeWidth: 2,
      color: AppColors.progressIndicator,
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
        disabledBackgroundColor: AppColors.primary,
        textStyle: AppTextStyles.elevatedButton,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),

    // ─────────────────────────────────────────
    // Text Button Theme
    // ─────────────────────────────────────────
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.textButtonLabel,
        textStyle: AppTextStyles.textButton,
      ),
    ),

    // ─────────────────────────────────────────
    // Input Field Theme
    // ─────────────────────────────────────────
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surface,
      suffixIconColor: AppColors.suffixIconColor,
      activeIndicatorBorder: BorderSide(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: AppColors.primary),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(width: 0.1),
      ),
      hintStyle: AppTextStyles.caption,
    ),
  );

  // Prevent instantiation
  const AppTheme._();
}
