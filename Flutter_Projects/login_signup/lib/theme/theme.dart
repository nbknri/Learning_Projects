import 'package:flutter/material.dart';

const ligtColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF416FDF),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFF6EAEE7),
  onSecondary: Color(0xFFFFFFFF),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFFF9FAF3),
  onSurface: Color(0xFF1A1C18),
  shadow: Color(0xFF000000),
  outlineVariant: Color(0xFFC2C8BC),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF416FDF),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFF6EAEE7),
  onSecondary: Color(0xFFFFFFFF),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFFF9FAF3),
  onSurface: Color(0xFF1A1C18),
  shadow: Color(0xFF000000),
  outlineVariant: Color(0xFFC2C8BC),
);

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ligtColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(ligtColorScheme.primary),
      foregroundColor: WidgetStatePropertyAll(Colors.white),
      elevation: WidgetStatePropertyAll(5.0),
      padding: WidgetStatePropertyAll(
        const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
);
