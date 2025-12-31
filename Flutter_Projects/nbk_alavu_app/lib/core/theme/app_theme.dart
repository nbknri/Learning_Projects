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
      onPrimary: Colors.white,
      primaryContainer: AppColor.primaryContainer,
      onPrimaryContainer: AppColor.darkContrastPurple,
      secondary: AppColor.secondary,
      surface: AppColor.surfaceLight,
      onSurface: AppColor.textLightPrimary,
      error: AppColor.error,
    ),

    // AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColor.textLightPrimary),
      titleTextStyle: AppTextStyle.appBarTitle(AppColor.textLightPrimary),
    ),

    // Card Theme
    cardTheme: CardThemeData(
      color: AppColor.surfaceLight,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppColor.borderLight, width: 1),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
    ),

    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
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

    // Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        textStyle: AppTextStyle.buttonText(Colors.white),
      ),
    ),

    // SnackBar Theme
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColor.snackBarLight,
      contentTextStyle: AppTextStyle.snackBarContent(Colors.white),
      behavior: SnackBarBehavior.floating,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
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
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(color: AppColor.textDarkPrimary),
      titleTextStyle: AppTextStyle.appBarTitle(AppColor.textDarkPrimary),
    ),

    // Card Theme
    // Card Theme
    cardTheme: CardThemeData(
      color: AppColor.surfaceDark,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppColor.borderDark, width: 1),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
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

    // Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 0,
        textStyle: AppTextStyle.buttonText(Colors.white),
      ),
    ),

    // SnackBar Theme
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColor.snackBarDark,
      contentTextStyle: AppTextStyle.snackBarContent(AppColor.textLightPrimary),
      behavior: SnackBarBehavior.floating,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  );

  const AppTheme._();
}
