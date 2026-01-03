import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/theme/app_color.dart';

/// AppBar button for toggling between light and dark theme
class ThemeToggleButton extends StatelessWidget {
  final VoidCallback onPressed;

  const ThemeToggleButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        isDarkMode ? Icons.light_mode : Icons.dark_mode,
        color: AppColor.white,
      ),
      tooltip: AppStrings.toggleThemeTooltip,
    );
  }
}
