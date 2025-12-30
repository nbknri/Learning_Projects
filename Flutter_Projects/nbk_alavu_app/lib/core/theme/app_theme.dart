import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';

class AppTheme {
  //───────────────────────────────────
  // Light Theme
  //───────────────────────────────────
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColor.primary,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: AppColor.snackBarLight,
      contentTextStyle: TextStyle(color: AppColor.textLightPrimary),
      behavior: SnackBarBehavior.floating,
    ),
  );
  
  //───────────────────────────────────
  // Dark Theme
  //───────────────────────────────────
  static ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColor.primary,
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColor.snackBarDark,
      contentTextStyle: const TextStyle(color: AppColor.textDarkPrimary),
      behavior: SnackBarBehavior.floating,
    ),
  );

  const AppTheme._();
}
