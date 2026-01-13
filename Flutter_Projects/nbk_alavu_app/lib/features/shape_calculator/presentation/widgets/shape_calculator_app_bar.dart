import 'package:flutter/material.dart';
import 'package:nbk_alavu_app/core/constants/app_strings.dart';
import 'package:nbk_alavu_app/core/theme/app_text_style.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/clear_all_button.dart';
import 'package:nbk_alavu_app/features/shape_calculator/presentation/widgets/theme_toggle_button.dart';

class ShapeCalculatorAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onThemeChanged;

  const ShapeCalculatorAppBar({
    super.key,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppStrings.appTitle,
        style: Theme.of(context).appBarTitleStyle,
      ),
      actions: [
        const ClearAllButton(),
        ThemeToggleButton(
          onPressed: () {
            FocusManager.instance.primaryFocus?.unfocus();
            onThemeChanged();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
