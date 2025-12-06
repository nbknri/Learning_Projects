import 'package:blog_app/core/theme/app_pallet.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallet.borderColor]) => OutlineInputBorder(
    borderSide: BorderSide(color: color, width: 3),
    borderRadius: BorderRadius.circular(10),
  );

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallet.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(20),
      enabledBorder: _border(),
      focusedBorder: _border(AppPallet.gradient2),
    )
  );
}
