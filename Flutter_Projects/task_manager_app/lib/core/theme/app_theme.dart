import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/app_colors.dart';
import 'package:task_manager_app/core/theme/app_text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,

    // ─────────────────────────────────────────
    // Overall brightness
    // ─────────────────────────────────────────
    brightness: Brightness.light,

    // ───────────────────────────────
    // Color Scheme
    // ───────────────────────────────
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      surface: AppColors.surface,
      error: AppColors.error,
    ),

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
      iconTheme: IconThemeData(color: AppColors.textPrimary),
      titleTextStyle: AppTextStyles.title,
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
      color: AppColors.primary,
    ),

    // ─────────────────────────────────────────
    // Floating Action Button
    // ─────────────────────────────────────────
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
    ),

    // ─────────────────────────────────────────
    // Elevated Button Theme
    // ─────────────────────────────────────────
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        disabledBackgroundColor: AppColors.primary,
        textStyle: AppTextStyles.elevatedButton,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        elevation: 0,
      ),
    ),

    // ─────────────────────────────────────────
    // Outlined Button Theme
    // ─────────────────────────────────────────
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.textPrimary,
        backgroundColor: AppColors.surface,
        side: const BorderSide(color: AppColors.border),
        textStyle: AppTextStyles.socialButtonText,
        maximumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      ),
    ),

    // ─────────────────────────────────────────
    // Text Button Theme
    // ─────────────────────────────────────────
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        textStyle: AppTextStyles.textButton,
      ),
    ),

    // ─────────────────────────────────────────
    // Input Field Theme
    // ─────────────────────────────────────────
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surface,
      hintStyle: AppTextStyles.caption,
      suffixIconColor: AppColors.textSecondary,
      prefixIconColor: AppColors.textSecondary,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.border),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.error),
      ),

      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.error),
      ),
    ),

    // ───────────────────────────────
    // Card Theme
    // ───────────────────────────────
    cardTheme: CardThemeData(
      color: AppColors.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    // ───────────────────────────────
    // Divider
    // ───────────────────────────────
    dividerTheme: const DividerThemeData(
      color: AppColors.divider,
      thickness: 1,
      space: 32,
    ),

    // ───────────────────────────────
    // Checkbox Theme
    // ───────────────────────────────
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),

      side: const BorderSide(color: AppColors.border, width: 2),

      checkColor: WidgetStateProperty.all(AppColors.white),

      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return AppColors.primary; // ✔ checked color
        }
        return AppColors.surface; // ✔ unchecked bg
      }),
    ),

    // SnackBar (Offline Bar)
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.primary,
      contentTextStyle: AppTextStyles.subtitle.copyWith(
        color: AppColors.white,
      ),
      behavior: SnackBarBehavior.fixed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  // Prevent instantiation
  const AppTheme._();
}
