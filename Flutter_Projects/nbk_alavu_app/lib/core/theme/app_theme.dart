import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';

class AppTheme {
  //───────────────────────────────────
  // Light Theme
  //───────────────────────────────────
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.backgroundLight,

    // Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColor.primary,
      brightness: Brightness.light,
      primary: AppColor.primary,
      onPrimary: AppColor.white,
      primaryContainer: AppColor.primaryContainer,
      onPrimaryContainer: AppColor.textLightPrimary,
      secondary: AppColor.secondary,
      surface: AppColor.surfaceLight,
      onSurface: AppColor.textLightPrimary,
      error: AppColor.error,
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primary,
      foregroundColor: AppColor.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColor.white),
      titleTextStyle: AppTextStyle.appBarTitle(AppColor.white),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: AppColor.surfaceLight,
      elevation: 2,
      shadowColor: AppColor.primary.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColor.borderLight, width: 1),
      ),
      margin: const EdgeInsets.only(bottom: 8),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.white,
      contentPadding: const EdgeInsets.all(16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.borderLight),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.borderLight),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.primary, width: 2),
      ),
      labelStyle: AppTextStyle.inputLabel(AppColor.textLightSecondary),
      hintStyle: AppTextStyle.inputHint(AppColor.textLightSecondary),
    ),

    // Button Theme - Safety Orange for high visibility
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.accent, // Safety Orange
        foregroundColor: AppColor.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2, // Slight elevation for depth
        shadowColor: AppColor.accent.withValues(alpha: 0.3),
        textStyle: AppTextStyle.buttonText(AppColor.white),
      ),
    ),

    // SnackBar Theme - Error Alert Style
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColor.redError, // Dark red for errors
      contentTextStyle: const TextStyle(
        color: AppColor.white,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  //───────────────────────────────────
  // Dark Theme
  //───────────────────────────────────
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.backgroundDark,

    // Color Scheme
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColor.primary,
      brightness: Brightness.dark,
      primary: AppColor.primary,
      onPrimary: Colors.white,
      primaryContainer: AppColor.primary.withValues(alpha: 0.2),
      onPrimaryContainer: AppColor.primaryContainer,
      secondary: AppColor.secondary,
      surface: AppColor.surfaceDark,
      onSurface: AppColor.textDarkPrimary,
      error: AppColor.error,
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.primary,
      foregroundColor: AppColor.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColor.white),
      titleTextStyle: AppTextStyle.appBarTitle(AppColor.white),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: AppColor.surfaceDark,
      elevation: 2,
      shadowColor: AppColor.primary.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColor.borderDark, width: 1),
      ),
      margin: const EdgeInsets.only(bottom: 8),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.surfaceDark,
      contentPadding: const EdgeInsets.all(16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.borderDark),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.borderDark),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColor.primary, width: 2),
      ),
      labelStyle: AppTextStyle.inputLabel(AppColor.textDarkSecondary),
      hintStyle: AppTextStyle.inputHint(AppColor.textDarkSecondary),
    ),

    // Button Theme - Safety Orange for high visibility in dark mode
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.accent, // Safety Orange
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        shadowColor: AppColor.accent.withValues(alpha: 0.3),
        textStyle: AppTextStyle.buttonText(Colors.white),
      ),
    ),

    // SnackBar Theme - Error Alert Style
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.red.shade700, // Dark red for errors
      contentTextStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );

  const AppTheme._();
}

//───────────────────────────────────────────────────────
// Theme Extensions for Decorations
//───────────────────────────────────────────────────────

/// Dashboard Decoration Styles Extension
extension DashboardDecorations on ThemeData {
  BoxDecoration get dashboardHeaderDecoration => BoxDecoration(
    color: AppColor.primary,
    borderRadius: const BorderRadius.only(
      bottomLeft: Radius.circular(24),
      bottomRight: Radius.circular(24),
    ),
    boxShadow: [
      BoxShadow(
        color: AppColor.primary.withValues(alpha: 0.3),
        blurRadius: 12,
        offset: const Offset(0, 4),
      ),
    ],
  );

  BoxDecoration get dashboardMetricCardDecoration => BoxDecoration(
    color: AppColor.white.withValues(alpha: 0.2),
    borderRadius: BorderRadius.circular(16),
    border: Border.all(color: AppColor.white.withValues(alpha: 0.3), width: 1),
  );

  BoxDecoration get dashboardSecondaryDecoration => BoxDecoration(
    color: AppColor.white.withValues(alpha: 0.15),
    borderRadius: BorderRadius.circular(12),
  );
}

/// Input Section Decoration Styles Extension
extension InputSectionDecorations on ThemeData {
  BoxDecoration unitContainerDecoration(BuildContext context) {
    return BoxDecoration(
      border: Border.all(
        color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.5),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}

/// Shape Card Decoration Styles Extension
extension ShapeCardDecorations on ThemeData {
  BoxDecoration get shapeCardIconDecoration => BoxDecoration(
    color: AppColor.primary.withValues(alpha: 0.1),
    borderRadius: BorderRadius.circular(8),
  );
}
